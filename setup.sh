#!/bin/bash
docker kill nng/dev
docker rmi nng/dev
docker build -t nng/dev .
