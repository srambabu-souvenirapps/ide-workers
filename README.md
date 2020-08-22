# IDE Workers

[![Build Status](https://travis-ci.com/ifaisalalam/ide-workers.svg?branch=master)](https://travis-ci.com/ifaisalalam/ide-workers)

This repository contains the workers source in which the code is actually executed.

## How does it work?

A Worker is a docker image which runs the code.

- Each image contains a `compile.sh` file (if required) which compiles the source code.
- Once the code is compiled (if required), `run.sh` executes the code or the executable binary.

## Base Image

All worker images are built on top of [Alpine Linux](https://alpinelinux.org/) 3.10, except NodeJS 8 worker which is build on top of [Alpine Linux](https://alpinelinux.org/) 3.7.

## Supported Languages

Presently, the workers support the following languages:

 - [C](containers/c)
 - [C++](containers/cpp)
 - [Python 2](containers/python2)
 - [Python 3](containers/python3)
 - [NodeJS 8](containers/nodejs8)
