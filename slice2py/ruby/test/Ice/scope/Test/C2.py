# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.C2_forward import _Test_C2_t

from Test.MyEnum import MyEnum
from Test.MyEnum import _Test_MyEnum_t

from Test.MyOtherClass_forward import _Test_MyOtherClass_t

from Test.MyOtherStruct import MyOtherStruct
from Test.MyOtherStruct import _Test_MyOtherStruct_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.MyOtherClass import MyOtherClass

@dataclass(eq=False)
class C2(Value):
    e1: MyEnum = MyEnum.v1
    s1: MyOtherStruct = field(default_factory=MyOtherStruct)
    c1: MyOtherClass | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::C2"

_Test_C2_t = IcePy.defineValue(
    "::Test::C2",
    C2,
    -1,
    (),
    False,
    None,
    (
        ("e1", (), _Test_MyEnum_t, False, 0),
        ("s1", (), _Test_MyOtherStruct_t, False, 0),
        ("c1", (), _Test_MyOtherClass_t, False, 0)
    ))

setattr(C2, '_ice_type', _Test_C2_t)

__all__ = ["C2", "_Test_C2_t"]
