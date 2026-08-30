#!/bin/bash

set -e

VER="${1}"

if [ -z "${VER}" ]; then
	echo "${0} <version>" >&2
	exit 1
fi
TAG="matrixos-${VER}"

git tag "${TAG}"
git push --tags

echo "Now go to https://github.com/lxnay/matrixos-kernel/releases/new and"
echo "create a new release with tag ${TAG}"
