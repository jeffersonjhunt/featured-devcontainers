#!/bin/sh
#-------------------------------------------------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See https://github.com/devcontainers/features/blob/main/LICENSE for license information.
#-------------------------------------------------------------------------------------------------------------------------
#
# Docs: https://github.com/devcontainers/features/tree/main/src/common-utils
# Maintainer: The Dev Container spec maintainers

set -e

INSTALL_X11="${INSTALLX11:-"true"}"
X11_DISPLAY="${X11DISPLAY:-""}
X11_SOCKET="${X11SOCKET:-""}

MARKER_FILE="/usr/local/etc/vscode-dev-containers/x11"

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
