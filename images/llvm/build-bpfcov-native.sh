#!/bin/bash

# Copyright 2017-2020 Authors of Cilium
# SPDX-License-Identifier: Apache-2.0

set -o xtrace
set -o errexit
set -o pipefail
set -o nounset

mkdir -p /src/bpfcov/build-native

cd /src/bpfcov/build-native

cmake .. \
	-DLT_LLVM_INSTALL_DIR="/src/llvm/llvm/build-native"

make

mkdir -p /out/linux/amd64/lib
cp lib/libBPFCov.so /out/linux/amd64/lib
echo gehogeo
