# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class ShortEnum(Enum):
    
    senum1 = 3
    senum2 = 4
    senum3 = 10
    senum4 = 11
    senum5 = 20
    senum6 = 21
    senum7 = 30
    senum8 = 31
    senum9 = 40
    senum10 = 41
    senum11 = 32766

_Test_ShortEnum_t = IcePy.defineEnum(
    "::Test::ShortEnum",
    ShortEnum,
    (),
    {
        3: ShortEnum.senum1,
        4: ShortEnum.senum2,
        10: ShortEnum.senum3,
        11: ShortEnum.senum4,
        20: ShortEnum.senum5,
        21: ShortEnum.senum6,
        30: ShortEnum.senum7,
        31: ShortEnum.senum8,
        40: ShortEnum.senum9,
        41: ShortEnum.senum10,
        32766: ShortEnum.senum11,
    }
)

__all__ = ["ShortEnum", "_Test_ShortEnum_t"]
