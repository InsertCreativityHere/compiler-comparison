# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass
from dataclasses import field

from generated.test.Ice.scope.Test.Inner.MyClass_forward import _generated_test_Ice_scope_Test_Inner_MyClass_t

from generated.test.Ice.scope.Test.Inner.MyStruct import MyStruct
from generated.test.Ice.scope.Test.Inner.MyStruct import _generated_test_Ice_scope_Test_Inner_MyStruct_t

@dataclass(eq=False)
class MyClass(Value):
    s: MyStruct = field(default_factory=MyStruct)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Inner::MyClass"

_generated_test_Ice_scope_Test_Inner_MyClass_t = IcePy.defineValue(
    "::Test::Inner::MyClass",
    MyClass,
    -1,
    (),
    False,
    None,
    (("s", (), _generated_test_Ice_scope_Test_Inner_MyStruct_t, False, 0),))

setattr(MyClass, '_ice_type', _generated_test_Ice_scope_Test_Inner_MyClass_t)

__all__ = ["MyClass", "_generated_test_Ice_scope_Test_Inner_MyClass_t"]
