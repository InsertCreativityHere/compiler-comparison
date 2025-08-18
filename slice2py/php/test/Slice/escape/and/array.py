# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class array(Enum):
    
    clone = 1

_and_array_t = IcePy.defineEnum(
    "::and::array",
    array,
    (),
    {
        1: array.clone,
    }
)

__all__ = ["array", "_and_array_t"]
