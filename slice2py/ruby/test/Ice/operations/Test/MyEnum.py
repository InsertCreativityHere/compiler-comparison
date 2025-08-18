# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class MyEnum(Enum):
    
    enum1 = 0
    enum2 = 1
    enum3 = 2

_Test_MyEnum_t = IcePy.defineEnum(
    "::Test::MyEnum",
    MyEnum,
    (),
    {
        0: MyEnum.enum1,
        1: MyEnum.enum2,
        2: MyEnum.enum3,
    }
)

__all__ = ["MyEnum", "_Test_MyEnum_t"]
