# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class InnerStruct2:
    a: str = ""

_Test_InnerStruct2_t = IcePy.defineStruct(
    "::Test::InnerStruct2",
    InnerStruct2,
    (),
    (("a", (), IcePy._t_string),))

__all__ = ["InnerStruct2", "_Test_InnerStruct2_t"]
