#!/bin/bash
(
set -e
set -x
cd /Applications/Dash.app/Contents/MacOS/
if [[ $(uname -m) == 'arm64' ]]; then
    wget "https://github.com/shinohara-rin/dash-no-license/raw/master/aarch64/libdash.dylib"
    wget "https://github.com/shinohara-rin/insert_dylib/releases/download/owo/insert_dylib" -O /tmp/insert_dylib
else
    wget "https://github.com/shinohara-rin/dash-no-license/raw/master/x86_64/libdash.dylib"
    wget "https://github.com/shinohara-rin/insert_dylib/releases/download/uwu/insert_dylib" -O /tmp/insert_dylib
fi
chmod u+x /tmp/insert_dylib
/tmp/insert_dylib --inplace --strip-codesig '@executable_path/libdash.dylib' Dash
xattr -rd com.apple.quarantine /Applications/Dash.app/
codesign --force --deep --sign - /Applications/Dash.app/
rm /tmp/insert_dylib
) # ensure complete download