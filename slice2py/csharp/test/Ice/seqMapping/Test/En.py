# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class En(Enum):
    
    A = 0
    B = 1
    C = 2

_Test_En_t = IcePy.defineEnum(
    "::Test::En",
    En,
    (),
    {
        0: En.A,
        1: En.B,
        2: En.C,
    }
)

__all__ = ["En", "_Test_En_t"]
