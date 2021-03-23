#!/usr/bin/env bash

set -o nounset
set -o errexit
set -o pipefail



declare -r QTD_LIB_VERSION_LATEST='0.0.1'



case "${QUOTIDIAN_LIB_VERSION:-${QTD_LIB_VERSION_LATEST}}" in
    "0.0.1")
        declare -r QTD_VER_DIR='000.000.001'
        ;;

    *)
        echo "ERROR: Unexpected value in \"QUOTIDIAN_LIB_VERSION\""
        echo "Most recent version is \"${QTD_LIB_VERSION_LATEST}\""
        echo "Aborting."

        exit 1
        ;;

esac

declare -r QTD_LOADER_DIR="$( dirname ${BASH_SOURCE[0]} )/${QTD_VER_DIR}"

source "${QTD_LOADER_DIR}/quotidian-bash.lib_loader.sh"

