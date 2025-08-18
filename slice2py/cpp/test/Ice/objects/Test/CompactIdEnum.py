# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class CompactIdEnum(Enum):
    
    First = 1
    Second = 2

_Test_CompactIdEnum_t = IcePy.defineEnum(
    "::Test::CompactIdEnum",
    CompactIdEnum,
    (),
    {
        1: CompactIdEnum.First,
        2: CompactIdEnum.Second,
    }
)

__all__ = ["CompactIdEnum", "_Test_CompactIdEnum_t"]
