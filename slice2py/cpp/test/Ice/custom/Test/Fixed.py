# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class Fixed:
    s: int = 0

_Test_Fixed_t = IcePy.defineStruct(
    "::Test::Fixed",
    Fixed,
    (),
    (("s", (), IcePy._t_short),))

__all__ = ["Fixed", "_Test_Fixed_t"]
