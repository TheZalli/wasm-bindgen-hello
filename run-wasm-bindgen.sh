#!/bin/sh
mkdir wasm_bindgen
wasm-bindgen target/wasm32-unknown-unknown/debug/wasm_bindgen_hello.wasm \
  --out-dir wasm_bindgen
