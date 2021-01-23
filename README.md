# Dash no license patch

###### For a full list of commands see `strings /dev/urandom`

## How to 

inject libdash.dylib to Dash executable with [insert_dylib](https://github.com/Tyilo/insert_dylib)

you can download the precompiled insert_dylib  binary [here](https://github.com/shinohara-rin/insert_dylib/releases/download/uwu/insert_dylib)

## I still don't know how to

1. put `libdash.dylib` to `/Applications/Dash.app/Contents/MacOS`
2. install `insert_dylib` (probably to `/usr/local/bin`)
3. open terminal in `/Applications/Dash.app/Contents/MacOS`
4. run `insert_dylib --inplace --strip-codesig '@executable_path/libdash.dylib' Dash`
