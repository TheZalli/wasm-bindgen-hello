const js = import("./wasm_bindgen/wasm_bindgen_hello");

js.then(js => {
  js.greet("World!");
});
