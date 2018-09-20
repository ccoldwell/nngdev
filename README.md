# nngdev
A dockerized nng c development environment.

## Purpose and Usage
Just a quick way to get developing without worrying too much about having the environment all set up. Just open a terminal to the directory your code is in and do this:
```
$ nngdev
```
you will be dropped into a linux container with all the nng c dev stuff you need.  Specifically your local dir is mounted as /src in the container and that is where you are placed.

Also, a valgrind helper is present already, just do this:
```
container$ cval ./executable
```
and valgrind will run the executable with --leak-check

## Installation
```
$ ./setup.sh
$ sudo cp nngdev /usr/local/bin/
```

## TBD
- This could be made to work a lot better with windows docker.  I use it on my mac.
- Perhaps a way to rebuild the container with specific libraries installed without having to edit the dockerfile, right now it just has the standard dev libs plus ncurses and valgrind
- build a makefile to do the build and install stuff
