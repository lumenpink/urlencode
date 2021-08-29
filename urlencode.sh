#!/bin/bash

VERSION=0.0.2

usage() {
  echo "urlencode [-hV]"
  echo
  echo "Options:"
  echo "  -h|--help      Print this help dialogue and exit"
  echo "  -V|--version   Print the current version and exit"
}
if [ -z "${1}" ]; then
  usage
else
  for opt in "${@}"; do
    case "$opt" in
    -h | --help)
      usage
      exit 0
      ;;
    -V | --version)
      echo "$VERSION"
      exit 0
      ;;
    esac
  done
fi

LANG=C
# shellcheck disable=SC2116,SC2068
enc="$(echo $@)"
for ((i = 0; i < ${#enc}; i++)); do
  x="${enc:i:1}"
  [[ "${x}" == [a-zA-Z0-9._-] ]] &&
    echo -n "${x}" ||
    printf '%%%02X' "'${x}"
done
echo
exit $?
