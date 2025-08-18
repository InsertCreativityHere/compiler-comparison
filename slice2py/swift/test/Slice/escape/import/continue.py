# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class continue(Enum):
    
    let = 0
    var = 1

_import_continue_t = IcePy.defineEnum(
    "::import::continue",
    continue,
    (),
    {
        0: continue.let,
        1: continue.var,
    }
)

__all__ = ["continue", "_import_continue_t"]
