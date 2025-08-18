# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class NestedEnum(Enum):
    
    nestedEnum1 = 0
    nestedEnum2 = 1
    nestedEnum3 = 2

_Test_Sub_NestedEnum_t = IcePy.defineEnum(
    "::Test::Sub::NestedEnum",
    NestedEnum,
    (),
    {
        0: NestedEnum.nestedEnum1,
        1: NestedEnum.nestedEnum2,
        2: NestedEnum.nestedEnum3,
    }
)

__all__ = ["NestedEnum", "_Test_Sub_NestedEnum_t"]
