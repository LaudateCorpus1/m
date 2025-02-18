#!/bin/bash
set -xeuo pipefail

docker run \
  --env PYTHONPATH="/checkout/packages/python" \
  --rm \
  -it \
  -v "${PWD}":/checkout:z \
  -w /checkout \
  pyenv \
  "/checkout/build/$1.sh"
