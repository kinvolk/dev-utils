#!/usr/bin/env bash
set -e

SCRIPT_ABS_PATH="$(realpath "${0}")"
DEST="${1}"

function help {
  echo "Usage $(basename "${0}") TARGET_JS_OR_TS_PROJECT_DIR"
}

if [ -z "${DEST}" ]; then
  printf "Please provide a target repository.\n\n"
  help
  exit 1
fi

pushd ${DEST} > /dev/null

npm install --save-dev @kinvolk/eslint-config

if [[ -f .eslintrc.yml ]]; then
    echo "There is already an .eslintrc.yml file in this project. Please change it manually to use 'extends: @kinvolk/eslint-config'"
else
    cat > .eslintrc.yml <<EOF
extends: @kinvolk/eslint-config
EOF
fi

popd > /dev/null
