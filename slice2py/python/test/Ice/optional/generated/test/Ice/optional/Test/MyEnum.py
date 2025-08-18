# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class MyEnum(Enum):
    
    MyEnumMember = 0

_generated_test_Ice_optional_Test_MyEnum_t = IcePy.defineEnum(
    "::Test::MyEnum",
    MyEnum,
    (),
    {
        0: MyEnum.MyEnumMember,
    }
)

__all__ = ["MyEnum", "_generated_test_Ice_optional_Test_MyEnum_t"]
