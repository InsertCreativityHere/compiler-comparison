# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class A:
    i: int = 0

_Test_A_t = IcePy.defineStruct(
    "::Test::A",
    A,
    (),
    (("i", (), IcePy._t_int),))

__all__ = ["A", "_Test_A_t"]
