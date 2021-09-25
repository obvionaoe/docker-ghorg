#!/bin/sh

helpFunction()
{
  /go/bin/ghorg clone --help
  exit 1 # Exit script after printing help
}

/go/bin/ghorg "$@"

# Print helpFunction in case exit code is not 0 or no args were provided
if [ $? != 0 ] || [ $# == 0 ]; then
  helpFunction
else
  exit 0
fi


if [ $? != 0 ]; then
  helpFunction
else
  exit 0
fi
