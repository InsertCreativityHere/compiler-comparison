# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from enum import Enum

class _assert(Enum):
    
    _break = 0

_generated_test_Slice_escape_Test_escaped_and__assert_t = IcePy.defineEnum(
    "::Test::and::assert",
    _assert,
    ("python:identifier:_assert", ),
    {
        0: _assert._break,
    }
)

__all__ = ["_assert", "_generated_test_Slice_escape_Test_escaped_and__assert_t"]
