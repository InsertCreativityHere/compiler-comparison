# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class persistent(Enum):
    
    break = 0
    catch = 1
    LAST = 2

_classdef_persistent_t = IcePy.defineEnum(
    "::classdef::persistent",
    persistent,
    (),
    {
        0: persistent.break,
        1: persistent.catch,
        2: persistent.LAST,
    }
)

__all__ = ["persistent", "_classdef_persistent_t"]
