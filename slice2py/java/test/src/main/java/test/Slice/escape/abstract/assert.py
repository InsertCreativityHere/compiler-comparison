# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class assert(Enum):
    
    boolean = 0

_abstract_assert_t = IcePy.defineEnum(
    "::abstract::assert",
    assert,
    (),
    {
        0: assert.boolean,
    }
)

__all__ = ["assert", "_abstract_assert_t"]
