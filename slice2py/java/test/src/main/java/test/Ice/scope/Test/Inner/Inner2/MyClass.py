# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.Inner.Inner2.MyClass_forward import _Test_Inner_Inner2_MyClass_t

from Test.Inner.Inner2.MyStruct import MyStruct
from Test.Inner.Inner2.MyStruct import _Test_Inner_Inner2_MyStruct_t

from dataclasses import dataclass
from dataclasses import field

@dataclass(eq=False)
class MyClass(Value):
    s: MyStruct = field(default_factory=MyStruct)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Inner::Inner2::MyClass"

_Test_Inner_Inner2_MyClass_t = IcePy.defineValue(
    "::Test::Inner::Inner2::MyClass",
    MyClass,
    -1,
    (),
    False,
    None,
    (("s", (), _Test_Inner_Inner2_MyStruct_t, False, 0),))

setattr(MyClass, '_ice_type', _Test_Inner_Inner2_MyClass_t)

__all__ = ["MyClass", "_Test_Inner_Inner2_MyClass_t"]
