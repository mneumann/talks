#!/bin/sh

(cd src/c_extension && make clean)
export http_proxy="http://localhost:8080"
wee-pm presentation.slides 2> /dev/null > /dev/null
