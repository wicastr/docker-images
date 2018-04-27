#!/bin/bash

app=node
repo=wicastr
versions=(10.0.0 9.11.1 8.11.1 7.10.1 6.14.1 5.12.0 4.9.1)
archs=( amd64 )
bases=( alpine )
latest=8.11.1
current=10.0.0
mainline=
LTS=8.11.1
path=/Users/daff/Developer/wicastr/docker-images
app_on_repo=${repo}/${app}
ECHO_CMD=
set -e

if [ -f ~/.docker_registry_${repo}.token ];then
  TOKEN=$(cat ~/.docker_registry_${repo}.token)
else
  # set username and password
  echo "Username ?"
  read UNAME
  echo "Password ?"
  read -s UPASS
  TOKEN=$(curl -s -H "Content-Type: application/json" -X POST -d '{"username": "'${UNAME}'", "password": "'${UPASS}'"}' https://hub.docker.com/v2/users/login/ | jq -r .token)
  echo $TOKEN > ~/.docker_registry_${repo}.token
fi

REMOTE_IMAGE_TAGS=$(curl -s -H "Authorization: JWT ${TOKEN}" https://hub.docker.com/v2/repositories/${repo}/${app}/tags/?page_size=10000)
[ "$REMOTE_IMAGE_TAGS" == '{"detail": "Object not found"}' ] && REMOTE_IMAGE_TAGS="" || REMOTE_IMAGE_TAGS=$(jq -r '.results|.[]|.name' <<< "$REMOTE_IMAGE_TAGS")
LOCAL_IMAGE_TAGS=( $(docker images | awk 'BEGIN { OFS = ":";ORS=" "} /wicastr\/node/ {print $1, $2}') )

array_contains () {
  # test if an array contains a certain value
  # returns -1 if not, or array index if found
  # $1 : value to test
  # $2 : array
  # array_contains "$value" "${array[@]}"
  local e
  local i=-1
  local o=-1
  for e in "${@:2}"; do
    i=$(($i+1))
    if [[ "$e" == "$1" ]] ;then
      return 0
    fi
  done
  return 1
}

for version in ${versions[@]}; do
  major=$(awk -F"." '{print $1}' <<< $version)
  minor=$(awk -F"." '{print $2}' <<< $version)
  for arch in ${archs[@]};do
    for base in ${bases[@]};do
      builds=( base )
      if [ -d ${path}/${app}/${arch}/${base}/${major}/onbuild ];then
        builds+=(onbuild)
      fi
      if [ -d ${path}/${app}/${arch}/${base}/${major}/nginx ];then
        builds+=(nginx)
      fi
      if [ -d ${path}/${app}/${arch}/${base}/${major}/nginx/onbuild ];then
        builds+=(nginx-onbuild)
      fi
      for build in ${builds[@]};do
        dockerfile_base=${path}/${app}/${arch}/${base}/${major}
        dockerfile="${dockerfile_base}"
        added_tag=""
        [ "$arch" == "amd64" ] && arch_target="" || arch_target="-$arch"
        [ "$base" == "alpine" ] && base_target="" || base_target="-$base"
        if [ "$build" != "base" ];then
          added_tag="-${build}"
          dockerfile="${dockerfile_base}/$build"
        fi
        added_tag="${arch_target}${base_target}${added_tag}"

        [ "$build" == "nginx-onbuild" ] && dockerfile="${dockerfile_base}/nginx/onbuild"
        if array_contains ${version}${added_tag} $REMOTE_IMAGE_TAGS;then
          echo "===> PUBLISHED - ${app_on_repo}:${version}${added_tag}"
          continue
        elif ! array_contains ${app_on_repo}:${version}${added_tag} $LOCAL_IMAGE_TAGS;then
          echo "===> BUILDING  - ${app_on_repo}:${version}${added_tag}"
          $ECHO_CMD docker build -t ${app_on_repo}:${version}${added_tag} $dockerfile
        fi
        $ECHO_CMD docker push ${app_on_repo}:${version}${added_tag}
        $ECHO_CMD docker tag ${app_on_repo}:${version}${added_tag} ${app_on_repo}:${major}.${minor}${added_tag}
        $ECHO_CMD docker push ${app_on_repo}:${major}.${minor}${added_tag}
        $ECHO_CMD docker tag ${app_on_repo}:${version}${added_tag} ${app_on_repo}:${major}${added_tag}
        $ECHO_CMD docker push ${app_on_repo}:${major}${added_tag}
        if [ "$version" == $latest ];then
          $ECHO_CMD docker tag ${app_on_repo}:${version}${added_tag} ${app_on_repo}:latest${added_tag}
          $ECHO_CMD docker push ${app_on_repo}:latest${added_tag}
        fi
        if [ "$version" == $LTS ];then
          $ECHO_CMD docker tag ${app_on_repo}:${version}${added_tag} ${app_on_repo}:LTS${added_tag}
          $ECHO_CMD docker push ${app_on_repo}:LTS${added_tag}
        fi
        if [ "$version" == $current ];then
          $ECHO_CMD docker tag ${app_on_repo}:${version}${added_tag} ${app_on_repo}:current${added_tag}
          $ECHO_CMD docker push ${app_on_repo}:current${added_tag}
        fi
      done
    done
  done
done

exit $?
