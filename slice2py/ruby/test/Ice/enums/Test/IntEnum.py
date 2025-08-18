# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class IntEnum(Enum):
    
    ienum1 = 0
    ienum2 = 1
    ienum3 = 10
    ienum4 = 11
    ienum5 = 20
    ienum6 = 21
    ienum7 = 30
    ienum8 = 31
    ienum9 = 40
    ienum10 = 41
    ienum11 = 2147483647
    ienum12 = 2147483646

_Test_IntEnum_t = IcePy.defineEnum(
    "::Test::IntEnum",
    IntEnum,
    (),
    {
        0: IntEnum.ienum1,
        1: IntEnum.ienum2,
        10: IntEnum.ienum3,
        11: IntEnum.ienum4,
        20: IntEnum.ienum5,
        21: IntEnum.ienum6,
        30: IntEnum.ienum7,
        31: IntEnum.ienum8,
        40: IntEnum.ienum9,
        41: IntEnum.ienum10,
        2147483647: IntEnum.ienum11,
        2147483646: IntEnum.ienum12,
    }
)

__all__ = ["IntEnum", "_Test_IntEnum_t"]
