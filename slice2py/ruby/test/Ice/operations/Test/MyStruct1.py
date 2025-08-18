# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.MyClass_forward import _Test_MyClassPrx_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.MyClass import MyClassPrx


@dataclass
class MyStruct1:
    tesT: str = ""
    myClass: MyClassPrx | None = None
    myStruct1: str = ""

_Test_MyStruct1_t = IcePy.defineStruct(
    "::Test::MyStruct1",
    MyStruct1,
    (),
    (
        ("tesT", (), IcePy._t_string),
        ("myClass", (), _Test_MyClassPrx_t),
        ("myStruct1", (), IcePy._t_string)
    ))

__all__ = ["MyStruct1", "_Test_MyStruct1_t"]
