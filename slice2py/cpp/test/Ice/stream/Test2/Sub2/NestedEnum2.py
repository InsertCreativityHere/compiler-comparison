# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class NestedEnum2(Enum):
    
    nestedEnum4 = 0
    nestedEnum5 = 1
    nestedEnum6 = 2

_Test2_Sub2_NestedEnum2_t = IcePy.defineEnum(
    "::Test2::Sub2::NestedEnum2",
    NestedEnum2,
    (),
    {
        0: NestedEnum2.nestedEnum4,
        1: NestedEnum2.nestedEnum5,
        2: NestedEnum2.nestedEnum6,
    }
)

__all__ = ["NestedEnum2", "_Test2_Sub2_NestedEnum2_t"]
