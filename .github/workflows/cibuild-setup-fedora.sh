#!/bin/bash
     
set -ex

# Xenial uses btrfs-tools, but since Focal it's btrfs-progs
#
PACKAGES=(
	dnf-plugins-core
	git
)

COMPILER="${COMPILER:?}"
PACKAGES+=("$COMPILER")


dnf -y update
dnf -y install "${PACKAGES[@]}" ||true
dnf -y builddep util-linux || true

