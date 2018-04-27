## Base Python container
These images are made to be used on [WICASTR](https://wicastr.com) certified Edge Computing hardware combined with the [WICASTR platform](https://cloud.wicastr.net) for easy installation and maintenance of applications at the Edge.
However they could also be used in other environments.
&nbsp;   
&nbsp;   
[![WICASTR LOGO](https://wicastr.com/images/logo-WiCastr-horizontal.png)](https://wicastr.com)
&nbsp;   
### Supported tags and respective `Dockerfile` links
* 3.6.5, 3.6, 3, latest [(python/amd64/alpine/3.6/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/python/amd64/alpine/3.6/Dockerfile)
* 3.6.5-onbuild, 3.6-onbuild, 3-onbuild, latest-onbuild [(python/amd64/alpine/3.6/onbuild/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/python/amd64/alpine/3.6/onbuild/Dockerfile)
* 3.5.5, 3.5 [(python/amd64/alpine/3.5/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/python/amd64/alpine/3.5/Dockerfile)
* 3.5.5-onbuild, 3.5-onbuild [(python/amd64/alpine/3.5/onbuild/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/python/amd64/alpine/3.5/onbuild/Dockerfile)
* 3.4.8, 3.4 [(python/amd64/alpine/3.4/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/python/amd64/alpine/3.4/Dockerfile)
* 3.4.8-onbuild, 3.4-onbuild [(python/amd64/alpine/3.4/onbuild/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/python/amd64/alpine/3.4/onbuild/Dockerfile)
* 2.7.14, 2.7, 2 [(python/amd64/alpine/2.7/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/python/amd64/alpine/2.7/Dockerfile)
* 2.7.14-onbuild, 2.7-onbuild, 2-onbuild [(python/amd64/alpine/2.7/onbuild/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/python/amd64/alpine/2.7/onbuild/Dockerfile)

### Hello World
[https://github.com/wicastr/hello-docker-python]()

### Where to file issues:
[https://github.com/wicastr/docker-images/issues]()

### Flavors
`python:<version>`
This image is based on the popular [Alpine Linux project](http://alpinelinux.org), available in [the `alpine` official image](https://hub.docker.com/_/alpine). Alpine Linux is much smaller than most distribution base images (~5MB), and thus leads to much slimmer images in general.

`python:<version>-onbuild`
The onbuild variant is really useful for "getting off the ground running" (zero to Dockerized in a short period of time).
Once you've got a handle on how your project functions within Docker, you'll probably want to adjust your Dockerfile to inherit from a non-onbuild variant and copy the commands from the onbuild variant Dockerfile (moving the ONBUILD lines to the end and removing the ONBUILD keywords) into your own file so that you have tighter control over them and more transparency for yourself and others looking at your Dockerfile as to what it does. This also makes it easier to add additional requirements as time goes on (such as installing more packages before performing the previously-ONBUILD steps).

### Supported architectures:
amd64

### Supported Docker Version
17.09.1-ce

### Maintained by:
[WICASTR's Docker Team](mailto:dockers@wicastr.com)

### Based on
[Official Alpine image](https://hub.docker.com/_/alpine)
[Official Python image](https://hub.docker.com/_/python/)

## What is Python?
Python is an interpreted, interactive, object-oriented, open-source programming language. It incorporates modules, exceptions, dynamic typing, very high level dynamic data types, and classes. Python combines remarkable power with very clear syntax. It has interfaces to many system calls and libraries, as well as to various window systems, and is extensible in C or C++. It is also usable as an extension language for applications that need a programmable interface. Finally, Python is portable: it runs on many Unix variants, on the Mac, and on Windows 2000 and later.

[wikipedia.org/wiki/Python_%28programming_language%29](https://en.wikipedia.org/wiki/Python_%28programming_language%29)
[![Python](https://raw.githubusercontent.com/docker-library/docs/01c12653951b2fe592c1f93a13b4e289ada0e3a1/python/logo.png)](https://python.org/)

### License
View license information for [Python 2](https://docs.python.org/2/license.html) and [Python 3](https://docs.python.org/3/license.html).

View [license information](https://github.com/nodejs/node/blob/master/LICENSE) for Node.js or [license information](https://github.com/nodejs/docker-node/blob/master/LICENSE) for the Node.js Docker project.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

Some additional license information which was able to be auto-detected might be found in [the repo-info repository's python/ directory](https://github.com/docker-library/repo-info/tree/master/repos/python).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
