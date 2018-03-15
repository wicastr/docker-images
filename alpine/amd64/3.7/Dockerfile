FROM alpine:3.7

LABEL arch="amd64"
LABEL maintainer="WICASTR Docker Maintainers <dockerst@wicastr.com>"

RUN apk add --no-cache --update \
		ca-certificates \
		tar \
		xz \
	&& rm -rf /var/cache/apk/*
