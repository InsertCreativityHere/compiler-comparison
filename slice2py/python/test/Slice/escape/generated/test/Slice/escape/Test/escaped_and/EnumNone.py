# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class EnumNone(Enum):
    
    _None = 0

_generated_test_Slice_escape_Test_escaped_and_EnumNone_t = IcePy.defineEnum(
    "::Test::and::EnumNone",
    EnumNone,
    (),
    {
        0: EnumNone._None,
    }
)

__all__ = ["EnumNone", "_generated_test_Slice_escape_Test_escaped_and_EnumNone_t"]
