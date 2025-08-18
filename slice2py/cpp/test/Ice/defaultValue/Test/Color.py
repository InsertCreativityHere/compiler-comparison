# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class Color(Enum):
    
    red = 0
    green = 1
    blue = 2

_Test_Color_t = IcePy.defineEnum(
    "::Test::Color",
    Color,
    (),
    {
        0: Color.red,
        1: Color.green,
        2: Color.blue,
    }
)

__all__ = ["Color", "_Test_Color_t"]
