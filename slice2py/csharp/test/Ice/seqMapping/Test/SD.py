# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class SD:
    i: int = 1

_Test_SD_t = IcePy.defineStruct(
    "::Test::SD",
    SD,
    (),
    (("i", (), IcePy._t_int),))

__all__ = ["SD", "_Test_SD_t"]
