# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class ByteEnum(Enum):
    
    benum1 = 0
    benum2 = 1
    benum3 = 10
    benum4 = 11
    benum5 = 20
    benum6 = 21
    benum7 = 30
    benum8 = 31
    benum9 = 40
    benum10 = 41
    benum11 = 126

_generated_test_Ice_enums_Test_ByteEnum_t = IcePy.defineEnum(
    "::Test::ByteEnum",
    ByteEnum,
    (),
    {
        0: ByteEnum.benum1,
        1: ByteEnum.benum2,
        10: ByteEnum.benum3,
        11: ByteEnum.benum4,
        20: ByteEnum.benum5,
        21: ByteEnum.benum6,
        30: ByteEnum.benum7,
        31: ByteEnum.benum8,
        40: ByteEnum.benum9,
        41: ByteEnum.benum10,
        126: ByteEnum.benum11,
    }
)

__all__ = ["ByteEnum", "_generated_test_Ice_enums_Test_ByteEnum_t"]
