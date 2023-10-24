#!/bin/sh
#-------------------------------------------------------------------------------------------------------------------------
# Copyright (c) Jefferson J. Hunt. All rights reserved.
# Licensed under the MIT License. See https://github.com/devcontainers/features/blob/main/LICENSE for license information.
#-------------------------------------------------------------------------------------------------------------------------
#
# Docs: https://github.com/jeffersonjhunt/featured-devcontainers/tree/main/src/opencv
# Maintainer: Jefferson J. Hunt (jeffersonjhunt at gmail.com)

set -e

CLEAN_UP="${CLEANUP:-"true"}"
WITH_CUDA="${WITHCUDA:-"true"}"
VERSION="${VERSION:-"4.8.1"}"
WITH_PYTHON3="${WITHPYTHON3:-"true"}"
WITH_GTK3="${WITHGTK3:-"false"}"
WITH_JPEG="${WITHJPEG:-"false"}"
WITH_OPENEXR="${WITHOPENEXR:-"false"}"
WITH_PNG="${WITHPNG:-"false"}"
WITH_TIFF="${WITHTIFF:-"false"}"
WITH_WEBP="${WITHWEBP:-"false"}"

MARKER_FILE="/usr/local/etc/vscode-dev-containers/opencv"

if [ "$(id -u)" -ne 0 ]; then
    echo -e 'Script must be run as root. Use sudo, su, or add "USER root" to your Dockerfile before running this script.'
    exit 1
fi

# If we're using Alpine, install bash before executing
. /etc/os-release
if [ "${ID}" = "alpine" ]; then
    apk add --no-cache bash
fi

exec /bin/bash "$(dirname $0)/main.sh" "$@"
exit $?
