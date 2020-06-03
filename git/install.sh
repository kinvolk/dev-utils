#!/usr/bin/env bash
set -eu

SCRIPT_ABS_PATH="$(realpath "${0}")"
SRC="$(dirname "${SCRIPT_ABS_PATH}")"
HOOKS_SRC=$SRC/hooks
DEST="${1}"

function help {
  echo "Usage $(basename "${0}") TARGET_REPO_BASE_DIR"
}

if [ -z "${DEST}" ]; then
  printf "Please provide a target repository.\n\n"
  help
  exit 1
fi

HOOKS_DEST="${DEST}/.git/hooks"

if [ ! -d "${HOOKS_DEST}" ]; then
  echo "No git folder found in ${HOOKS_DEST}"
  exit 1
fi

hooks=$(find "${HOOKS_SRC}" -type f)
for hook in ${hooks[@]}; do
  hook_name=$(basename "${hook}")
  hook_src_path="$HOOKS_SRC/$hook_name"
  hook_dest_path="$HOOKS_DEST/$hook_name"
  if [ -L "${hook_dest_path}" ]; then
    echo "Not installing $hook_src_path: $hook_dest_path already exists!"
  elif [ -e "${hook_dest_path}" ]; then
    echo "Not installing $hook_src_path: $hook_dest_path already exists!"
  else
    echo -e "Installing $hook_src_path\t->\t$hook_dest_path\n"
    ln -s "${hook_src_path}" "${hook_dest_path}"
  fi
done

# vim:set sts=2 sw=2 et:
