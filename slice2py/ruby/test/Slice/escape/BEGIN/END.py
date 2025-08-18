# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class END(Enum):
    
    alias = 0

_BEGIN_END_t = IcePy.defineEnum(
    "::BEGIN::END",
    END,
    (),
    {
        0: END.alias,
    }
)

__all__ = ["END", "_BEGIN_END_t"]
