## Base Node.js container
These images are made to be used on [WICASTR](https://wicastr.com) certified Edge Computing hardware combined with the [WICASTR platform](https://cloud.wicastr.net) for easy installation and maintenance of applications at the Edge.
However they could also be used in other environments.
&nbsp;   
&nbsp;   
[![WICASTR LOGO](https://wicastr.com/images/logo-WiCastr-horizontal.png)](https://wicastr.com)
&nbsp;   
### Supported tags and respective `Dockerfile` links
* 10.0.0, 10.0, 10, current [(node/amd64/alpine/10/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/node/amd64/alpine/10/Dockerfile)
* 10.0.0-onbuild, 10.0-onbuild, 10-onbuild, current-onbuild [(node/amd64/alpine/10/onbuild/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/node/amd64/alpine/10/onbuild/Dockerfile)
* 9.11.1, 9.11, 9 [(node/amd64/alpine/9/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/node/amd64/alpine/9/Dockerfile)
* 9.11.1-onbuild, 9.11-onbuild, 9-onbuild [(node/amd64/alpine/9/onbuild/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/node/amd64/alpine/9/onbuild/Dockerfile)
* 8.11.1, 8.11, 8, LTS, latest [(node/amd64/alpine/8/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/node/amd64/alpine/8/Dockerfile)
* 8.11.1-onbuild, 8.11-onbuild, 8-onbuild, LTS-onbuild, latest-onbuild [(node/amd64/alpine/8/onbuild/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/node/amd64/alpine/8/onbuild/Dockerfile)
* 7.10.1, 7.10, 7 [(node/amd64/alpine/7/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/node/amd64/alpine/7/Dockerfile)
* 7.10.1-onbuild, 7.10-onbuild, 7-onbuild [(node/amd64/alpine/7/onbuild/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/node/amd64/alpine/7/onbuild/Dockerfile)
* 6.14.1, 6.14, 6 [(node/amd64/alpine/6/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/node/amd64/alpine/6/Dockerfile)
* 6.14.1-onbuild, 6.14-onbuild, 6-onbuild [(node/amd64/alpine/6/onbuild/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/node/amd64/alpine/6/onbuild/Dockerfile)
* 5.12.0, 5.12, 5 [(node/amd64/alpine/5/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/node/amd64/alpine/5/Dockerfile)
* 5.12.0-onbuild, 5.12-onbuild, 5-onbuild [(node/amd64/alpine/5/onbuild/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/node/amd64/alpine/5/onbuild/Dockerfile)
* 4.9.1, 4.9, 4 [(node/amd64/alpine/4/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/node/amd64/alpine/4/Dockerfile)
* 4.9.1-onbuild, 4.9-onbuild, 4-onbuild [(node/amd64/alpine/4/onbuild/Dockerfile)](https://github.com/wicastr/docker-images/blob/master/node/amd64/alpine/4/onbuild/Dockerfile)

### Hello World
[https://github.com/wicastr/hello-docker-node]()

### Where to file issues:
[https://github.com/wicastr/docker-images/issues]()

### Flavors
`node:<version>`
This image is based on the popular [Alpine Linux project](http://alpinelinux.org), available in [the `alpine` official image](https://hub.docker.com/_/alpine). Alpine Linux is much smaller than most distribution base images (~5MB), and thus leads to much slimmer images in general.

`node:<version>-onbuild`
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
[Official Node.js image](https://hub.docker.com/_/node/)

## What is Node.js?
Node.js is a software platform for scalable server-side and networking applications. Node.js applications are written in JavaScript and can be run within the Node.js runtime on Mac OS X, Windows, and Linux without changes.

Node.js applications are designed to maximize throughput and efficiency, using non-blocking I/O and asynchronous events. Node.js applications run single-threaded, although Node.js uses multiple threads for file and network events. Node.js is commonly used for real-time applications due to its asynchronous nature.

Node.js internally uses the Google V8 JavaScript engine to execute code; a large percentage of the basic modules are written in JavaScript. Node.js contains a built-in, asynchronous I/O library for file, socket, and HTTP communication. The HTTP and socket support allows Node.js to act as a web server without additional software such as Apache.

[wikipedia.org/wiki/Node.js](https://en.wikipedia.org/wiki/Node.js)
[![Node.js](https://raw.githubusercontent.com/docker-library/docs/01c12653951b2fe592c1f93a13b4e289ada0e3a1/node/logo.png)](https://nodejs.org)

### License
View [license information](https://github.com/nodejs/node/blob/master/LICENSE) for Node.js or [license information](https://github.com/nodejs/docker-node/blob/master/LICENSE) for the Node.js Docker project.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

Some additional license information which was able to be auto-detected might be found in [the repo-info repository's node/ directory](https://github.com/docker-library/repo-info/tree/master/repos/node).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
