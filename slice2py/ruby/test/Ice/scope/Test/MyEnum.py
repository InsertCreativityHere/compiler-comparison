# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class MyEnum(Enum):
    
    v1 = 0
    v2 = 1
    v3 = 2

_Test_MyEnum_t = IcePy.defineEnum(
    "::Test::MyEnum",
    MyEnum,
    (),
    {
        0: MyEnum.v1,
        1: MyEnum.v2,
        2: MyEnum.v3,
    }
)

__all__ = ["MyEnum", "_Test_MyEnum_t"]
