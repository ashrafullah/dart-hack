// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#import("compiler_helper.dart");

final String TEST = @"""
class A {
  A.foo() {}
  A();
}
main() {
  new A();
  new A.foo();
}
""";

main() {
  String generated = compileAll(TEST);
  Expect.isTrue(generated.contains(
      'Isolate.\$defineClass("A", "Object", [], {\n});'));
}
