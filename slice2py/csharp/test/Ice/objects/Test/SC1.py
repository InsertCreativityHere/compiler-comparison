# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class SC1:
    id: str = ""

_Test_SC1_t = IcePy.defineStruct(
    "::Test::SC1",
    SC1,
    (),
    (("id", (), IcePy._t_string),))

__all__ = ["SC1", "_Test_SC1_t"]
