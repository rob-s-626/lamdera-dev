#!/bin/bash

docker run --rm -it \
    -p 8000:8000 \
    -v ~/code/lamdera-dev:/root/code \
    -w /root/code \
    lamdera-dev:latest \
    bash
