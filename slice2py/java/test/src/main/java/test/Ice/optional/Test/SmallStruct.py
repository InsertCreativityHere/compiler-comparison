# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class SmallStruct:
    m: int = 0

_Test_SmallStruct_t = IcePy.defineStruct(
    "::Test::SmallStruct",
    SmallStruct,
    (),
    (("m", (), IcePy._t_byte),))

__all__ = ["SmallStruct", "_Test_SmallStruct_t"]
