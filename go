#!/usr/bin/env bash

set -e
set -o nounset
set -o pipefail

SCRIPT_DIR=$(cd "$(dirname "$0")" ; pwd -P)
PROJECT_ROOT="${SCRIPT_DIR}"
APP=kafka-example

clean() {
  docker rm -f kafka-example
}

trap clean EXIT

goal_build() {
  pushd "${SCRIPT_DIR}" > /dev/null
      docker build -t ${APP}  .
  popd > /dev/null
}

goal_run() {
  pushd "${SCRIPT_DIR}" > /dev/null
    mounted_dir=$(cd ${PROJECT_ROOT}; pwd)/scripts
    echo "Mounting ${mounted_dir}"

    docker run -it \
      --name ${APP} \
      -v "${mounted_dir}:/app" \
      ${APP}
  popd > /dev/null
}

TARGET=${1:-}
if type -t "goal_${TARGET}" &>/dev/null; then
  "goal_${TARGET}" ${@:2}
else
  echo "Usage: $0 <goal>

goal:
    setup                   - Set up OKTA config
    build                   - Builds container
    run                     - Runs container
"
  exit 1
fi
