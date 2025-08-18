# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.AnotherStruct import AnotherStruct
from Test.AnotherStruct import _Test_AnotherStruct_t

from Test.MyClass_forward import _Test_MyClassPrx_t

from Test.MyEnum import MyEnum
from Test.MyEnum import _Test_MyEnum_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.MyClass import MyClassPrx


@dataclass
class Structure:
    p: MyClassPrx | None = None
    e: MyEnum = MyEnum.enum1
    s: AnotherStruct = field(default_factory=AnotherStruct)

_Test_Structure_t = IcePy.defineStruct(
    "::Test::Structure",
    Structure,
    (),
    (
        ("p", (), _Test_MyClassPrx_t),
        ("e", (), _Test_MyEnum_t),
        ("s", (), _Test_AnotherStruct_t)
    ))

__all__ = ["Structure", "_Test_Structure_t"]
