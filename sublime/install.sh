#!/usr/bin/env bash

set +e

ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
PKG_USER="/Users/`whoami`/Library/Application Support/Sublime Text 3/Packages/User/"
mkdir -p "${PKG_USER}"
find "${PKG_USER}" -name "*.sublime-*" -exec rm -f {} \;
cp snippets/* "${PKG_USER}"
cp settings/* "${PKG_USER}"

echo Success!
