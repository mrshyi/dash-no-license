# Dash no license patch

<img width="820" alt="image" src="https://user-images.githubusercontent.com/25588514/157162683-cd8510c0-5a85-4f24-96f4-16366e624ade.png">


###### For a full list of commands see `strings /dev/urandom` <!--(this is a joke)-->

This patch will fully unlock dash for you.

You **don't** need to disable SIP in order to make this work.

# NOT WORKING FOR Dash 6.4.0!!!

## Usage

1. Download the precompiled [insert_dylib](https://github.com/Tyilo/insert_dylib)  binary here ([x86_64](https://github.com/shinohara-rin/insert_dylib/releases/download/uwu/insert_dylib))([aarch64](https://github.com/shinohara-rin/insert_dylib/releases/download/owo/insert_dylib)), maybe add to PATH
2. Download libdash.dylib corresponds to your architecture.
3. Copy libdash.dylib to /Applications/Dash.app/Contents/MacOS/
3. Inject libdash.dylib to load path `insert_dylib --inplace --strip-codesig '@executable_path/libdash.dylib' Dash`
4. Remove quarantine flag `xattr -rd com.apple.quarantine /Applications/Dash.app/`
5. Re-sign the app `codesign --force --deep --sign - /Applications/Dash.app/`
6. Give me a star.

## TL;DR

```
wget -q -O - https://raw.githubusercontent.com/shinohara-rin/dash-no-license/master/libdash.sh | bash
```
