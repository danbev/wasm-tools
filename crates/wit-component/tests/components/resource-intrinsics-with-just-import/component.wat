(component
  (type (;0;)
    (instance
      (export (;0;) "a" (type (sub resource)))
    )
  )
  (import "foo" (instance (;0;) (type 0)))
  (core module (;0;)
    (type (;0;) (func (param i32)))
    (import "foo" "[resource-drop-own]a" (func (;0;) (type 0)))
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
      (processed-by "my-fake-bindgen" "123.45")
    )
  )
  (alias export 0 "a" (type (;1;)))
  (type (;2;) (own 1))
  (core func (;0;) (canon resource.drop 2))
  (@producers
    (processed-by "wit-component" "$CARGO_PKG_VERSION")
  )
  (core instance (;0;)
    (export "[resource-drop-own]a" (func 0))
  )
  (core instance (;1;) (instantiate 0
      (with "foo" (instance 0))
    )
  )
)