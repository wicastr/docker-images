## Base PHP container
These images are made to be used on [WICASTR](https://wicastr.com) certified Edge Computing hardware combined with the [WICASTR platform](https://cloud.wicastr.net) for easy installation and maintenance of applications at the Edge.
However they could also be used in other environments.
&nbsp;   
&nbsp;   
[![WICASTR LOGO](https://wicastr.com/images/logo-WiCastr-horizontal.png)](https://wicastr.com)
&nbsp;   
### Supported tags and respective `Dockerfile` links
* 7.2.5, 7.2, 7, latest [(php/amd64/alpine/7.2/fpm/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/php/amd64/alpine/7.2/fpm/Dockerfile)
* 7.1.17, 7.1 [(php/amd64/alpine/7.1/fpm/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/php/amd64/alpine/7.1/fpm/Dockerfile)
* 7.0.30, 7.0 [(php/amd64/alpine/7.0/fpm/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/php/amd64/alpine/7.0/fpm/Dockerfile)
* 5.6.36, 5.6, 5 [(php/amd64/alpine/5.6/fpm/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/php/amd64/alpine/5.6/fpm/Dockerfile)

### Hello World
[https://github.com/wicastr/hello-docker-php]()

### Where to file issues:
[https://github.com/wicastr/docker-images/issues]()

### Flavors
`php:<version>`
This image is based on the popular [Alpine Linux project](http://alpinelinux.org), available in [the `alpine` official image](https://hub.docker.com/_/alpine). Alpine Linux is much smaller than most distribution base images (~5MB), and thus leads to much slimmer images in general.

`php:<version>-onbuild`
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
[Official PHP image](https://hub.docker.com/_/php/)

## What is PHP ?
PHP is a server-side scripting language designed for web development, but which can also be used as a general-purpose programming language. PHP can be added to straight HTML or it can be used with a variety of templating engines and web frameworks. PHP code is usually processed by an interpreter, which is either implemented as a native module on the web-server or as a common gateway interface (CGI).

[wikipedia.org/wiki/PHP](http://en.wikipedia.org/wiki/PHP)
[![PHP](https://raw.githubusercontent.com/docker-library/docs/01c12653951b2fe592c1f93a13b4e289ada0e3a1/php/logo.png)](https://php.net/)

### License
View [license information](http://php.net/license/) for the software contained in this image.</p>

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

Some additional license information which was able to be auto-detected might be found in [the repo-info repository's php/ directory](https://github.com/docker-library/repo-info/tree/master/repos/php).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
