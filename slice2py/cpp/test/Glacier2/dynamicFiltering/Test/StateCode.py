# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class StateCode(Enum):
    
    Initial = 0
    Running = 1
    Finished = 2

_Test_StateCode_t = IcePy.defineEnum(
    "::Test::StateCode",
    StateCode,
    (),
    {
        0: StateCode.Initial,
        1: StateCode.Running,
        2: StateCode.Finished,
    }
)

__all__ = ["StateCode", "_Test_StateCode_t"]
