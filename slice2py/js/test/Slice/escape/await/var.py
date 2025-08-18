# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class var(Enum):
    
    base = 0

_await_var_t = IcePy.defineEnum(
    "::await::var",
    var,
    (),
    {
        0: var.base,
    }
)

__all__ = ["var", "_await_var_t"]
