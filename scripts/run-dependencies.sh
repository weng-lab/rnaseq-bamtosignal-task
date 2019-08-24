#!/bin/bash

set -e

# cd to project root directory
cd "$(dirname "$(dirname "$0")")"

docker build --target base -t genomealmanac/rnaseq-bamtosignal-base .

docker run --name rnaseq-bamtosignal-base --rm -i -t -d \
    -v /tmp/rnaseq-test:/tmp/rnaseq-test \
    genomealmanac/rnaseq-bamtosignal-base /bin/sh