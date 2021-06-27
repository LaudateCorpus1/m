#!/bin/bash
set -xeuo pipefail

export PYTHONPATH="${PWD}/packages/python"

# static checks
mypy ./packages/python/m
mypy ./packages/python/tests

# tests
./packages/python/tests/run.sh

# pylint
pylint ./packages/python/m --rcfile=.pylintrc

# pep8
pycodestyle --format=pylint packages/python
