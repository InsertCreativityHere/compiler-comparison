# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class _continue:
    _def: int = 0

_generated_test_Slice_escape_Test_escaped_and__continue_t = IcePy.defineStruct(
    "::Test::and::continue",
    _continue,
    ("python:identifier:_continue", ),
    (("_def", ("python:identifier:_def", ), IcePy._t_int),))

__all__ = ["_continue", "_generated_test_Slice_escape_Test_escaped_and__continue_t"]
