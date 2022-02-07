#!/bin/bash

# Copyright 2017-2020 Authors of Cilium
# SPDX-License-Identifier: Apache-2.0

set -o xtrace
set -o errexit
set -o pipefail
set -o nounset

rev="main"

git config --global user.email "maintainer@cilium.io"
git config --global user.name  "Cilium Maintainers"

git clone --branch "${rev}" https://github.com/elastic/bpfcov /src/bpfcov
