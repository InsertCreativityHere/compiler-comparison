# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class E(Enum):
    
    E1 = 0
    E2 = 1
    E3 = 2

_Test_E_t = IcePy.defineEnum(
    "::Test::E",
    E,
    (),
    {
        0: E.E1,
        1: E.E2,
        2: E.E3,
    }
)

__all__ = ["E", "_Test_E_t"]
