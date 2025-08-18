# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class AnotherStruct:
    s: str = ""

_Test_AnotherStruct_t = IcePy.defineStruct(
    "::Test::AnotherStruct",
    AnotherStruct,
    (),
    (("s", (), IcePy._t_string),))

__all__ = ["AnotherStruct", "_Test_AnotherStruct_t"]
