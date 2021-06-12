#!/bin/bash

if [ -z ${BUILDROOT_PATH} ]; then
  echo "BUILDROOT_PATH environment variable is not set."
  exit
fi

make O=${PWD}/output BR2_EXTERNAL=${PWD} -C ${BUILDROOT_PATH} "$@"
