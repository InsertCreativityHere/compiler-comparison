# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class InnerStruct:
    a: int = 0

_Test_InnerStruct_t = IcePy.defineStruct(
    "::Test::InnerStruct",
    InnerStruct,
    (),
    (("a", (), IcePy._t_int),))

__all__ = ["InnerStruct", "_Test_InnerStruct_t"]
