#!/bin/bash
################################################################################
# Copyright 2019 IBM Corp. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################
set -e

FILE="${1}"
THIS_DIR=$(dirname "${BASH_SOURCE[0]}")
TRAVIS_COMMIT="${TRAVIS_COMMIT:=$(git rev-parse HEAD)}"
export TRAVIS_COMMIT
GIT_REMOTE="$(git remote get-url origin)"
export GIT_REMOTE

envsubst <"${THIS_DIR}/viewTemplate.json" >/tmp/view.json

npx mustache /tmp/view.json "${FILE}"
