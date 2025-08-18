# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class G2:
    a: int = 0

_Test_G2_t = IcePy.defineStruct(
    "::Test::G2",
    G2,
    (),
    (("a", (), IcePy._t_long),))

__all__ = ["G2", "_Test_G2_t"]
