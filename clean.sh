#!/bin/sh
if test "$1" = "all"; then
  cargo clean
  rm -rf wasm_bindgen/
  rm -rf node_modules/
elif test "$1" = "help"; then
  echo "./clean.sh all | ([ cargo | wbind | node ]*)\n"
  echo "Cleans the chosen build files."
else
  for var in "$@"
  do
    if test ${var} = "cargo"; then
      cargo clean
    elif test ${var} = "wbind"; then
      rm -rf wasm_bindgen/
    elif test ${var} = "node"; then
      rm -rf node_modules/
    fi
  done
fi
