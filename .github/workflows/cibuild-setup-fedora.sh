#!/bin/bash
     
set -ex

# Xenial uses btrfs-tools, but since Focal it's btrfs-progs
#
PACKAGES=(
	bc
	btrfs-progs
	dnsutils
	libcap-ng-dev
	libncursesw5-dev
	libpam-dev
	libudev-dev
	gtk-doc-tools
	mdadm
	ntp
	socat
	asciidoctor
	meson
	lcov
)

COMPILER="${COMPILER:?}"
PACKAGES+=("$COMPILER")


dnf -y update
dnf -y builddep util-linux || true
dnf -y install "${PACKAGES[@]}" ||true

