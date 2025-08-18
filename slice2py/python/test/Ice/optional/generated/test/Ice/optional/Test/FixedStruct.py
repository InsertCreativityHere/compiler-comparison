# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class FixedStruct:
    m: int = 0

_generated_test_Ice_optional_Test_FixedStruct_t = IcePy.defineStruct(
    "::Test::FixedStruct",
    FixedStruct,
    (),
    (("m", (), IcePy._t_int),))

__all__ = ["FixedStruct", "_generated_test_Ice_optional_Test_FixedStruct_t"]
