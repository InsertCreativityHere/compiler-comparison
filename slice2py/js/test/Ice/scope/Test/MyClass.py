# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.MyClass_forward import _Test_MyClass_t

from Test.MyStruct import MyStruct
from Test.MyStruct import _Test_MyStruct_t

from dataclasses import dataclass
from dataclasses import field

@dataclass(eq=False)
class MyClass(Value):
    s: MyStruct = field(default_factory=MyStruct)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyClass"

_Test_MyClass_t = IcePy.defineValue(
    "::Test::MyClass",
    MyClass,
    -1,
    (),
    False,
    None,
    (("s", (), _Test_MyStruct_t, False, 0),))

setattr(MyClass, '_ice_type', _Test_MyClass_t)

__all__ = ["MyClass", "_Test_MyClass_t"]
