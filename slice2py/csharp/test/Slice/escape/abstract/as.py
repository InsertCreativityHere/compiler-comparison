# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class as(Enum):
    
    base = 0

_abstract_as_t = IcePy.defineEnum(
    "::abstract::as",
    as,
    (),
    {
        0: as.base,
    }
)

__all__ = ["as", "_abstract_as_t"]
