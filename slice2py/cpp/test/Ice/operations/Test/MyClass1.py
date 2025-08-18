# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.MyClass1_forward import _Test_MyClass1_t

from Test.MyClass_forward import _Test_MyClassPrx_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.MyClass import MyClassPrx

@dataclass(eq=False)
class MyClass1(Value):
    tesT: str = ""
    myClass: MyClassPrx | None = None
    myClass1: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyClass1"

_Test_MyClass1_t = IcePy.defineValue(
    "::Test::MyClass1",
    MyClass1,
    -1,
    (),
    False,
    None,
    (
        ("tesT", (), IcePy._t_string, False, 0),
        ("myClass", (), _Test_MyClassPrx_t, False, 0),
        ("myClass1", (), IcePy._t_string, False, 0)
    ))

setattr(MyClass1, '_ice_type', _Test_MyClass1_t)

__all__ = ["MyClass1", "_Test_MyClass1_t"]
