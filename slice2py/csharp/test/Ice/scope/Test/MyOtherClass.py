# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.MyOtherClass_forward import _Test_MyOtherClass_t

from dataclasses import dataclass

@dataclass(eq=False)
class MyOtherClass(Value):
    s: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyOtherClass"

_Test_MyOtherClass_t = IcePy.defineValue(
    "::Test::MyOtherClass",
    MyOtherClass,
    -1,
    (),
    False,
    None,
    (("s", (), IcePy._t_string, False, 0),))

setattr(MyOtherClass, '_ice_type', _Test_MyOtherClass_t)

__all__ = ["MyOtherClass", "_Test_MyOtherClass_t"]
