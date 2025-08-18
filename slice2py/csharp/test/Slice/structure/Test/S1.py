# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class S1:
    name: str = ""

_Test_S1_t = IcePy.defineStruct(
    "::Test::S1",
    S1,
    (),
    (("name", (), IcePy._t_string),))

__all__ = ["S1", "_Test_S1_t"]
