# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class SimpleEnum(Enum):
    
    red = 0
    green = 1
    blue = 2

_generated_test_Ice_enums_Test_SimpleEnum_t = IcePy.defineEnum(
    "::Test::SimpleEnum",
    SimpleEnum,
    (),
    {
        0: SimpleEnum.red,
        1: SimpleEnum.green,
        2: SimpleEnum.blue,
    }
)

__all__ = ["SimpleEnum", "_generated_test_Ice_enums_Test_SimpleEnum_t"]
