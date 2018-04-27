## Base nginx container
These images are made to be used on [WICASTR](https://wicastr.com) certified Edge Computing hardware combined with the [WICASTR platform](https://cloud.wicastr.net) for easy installation and maintenance of applications at the Edge.
However they could also be used in other environments.
&nbsp;   
&nbsp;   
[![WICASTR LOGO](https://wicastr.com/images/logo-WiCastr-horizontal.png)](https://wicastr.com)
&nbsp;  
### Supported tags and respective `Dockerfile` links
  * 1.14.0, 1.14, 1, stable, latest [(nginx/amd64/alpine/stable/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/nginx/amd64/alpine/stable/Dockerfile)
  * 1.13.12, 1.13, mainline [(nginx/amd64/alpine/mainline/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/nginx/amd64/alpine/mainline/Dockerfile)

### Hello World
[https://github.com/wicastr/hello-docker-static]()

### Where to file issues:
[https://github.com/wicastr/docker-images/issues]()

### Supported architectures:
amd64

### Supported Docker Version
17.09.1-ce

### Maintained by:
[WICASTR's Docker Team](mailto:dockers@wicastr.com)

### Based on
[Official Alpine image](https://hub.docker.com/_/alpine)
[Official nginx image](https://hub.docker.com/_/nginx/)

## What is nginx?
Nginx (pronounced "engine-x") is an open source reverse proxy server for HTTP, HTTPS, SMTP, POP3, and IMAP protocols, as well as a load balancer, HTTP cache, and a web server (origin server). The nginx project started with a strong focus on high concurrency, high performance and low memory usage. It is licensed under the 2-clause BSD-like license and it runs on Linux, BSD variants, Mac OS X, Solaris, AIX, HP-UX, as well as on other *nix flavors. It also has a proof of concept port for Microsoft Windows.

[wikipedia.org/wiki/Nginx](https://en.wikipedia.org/wiki/Nginx)
[![Nginx](https://raw.githubusercontent.com/docker-library/docs/01c12653951b2fe592c1f93a13b4e289ada0e3a1/nginx/logo.png)](http://nginx.org/)

### License
View [license information](http://nginx.org/LICENSE) for the software contained in this image.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

Some additional license information which was able to be auto-detected might be found in [the repo-info repository's nginx/ directory](https://github.com/docker-library/repo-info/tree/master/repos/nginx).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
