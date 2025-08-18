# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.MyClass_forward import _Test_MyClass_t

from dataclasses import dataclass

@dataclass(eq=False)
class MyClass(Value):
    i: int = 0

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
    (("i", (), IcePy._t_int, False, 0),))

setattr(MyClass, '_ice_type', _Test_MyClass_t)

__all__ = ["MyClass", "_Test_MyClass_t"]
