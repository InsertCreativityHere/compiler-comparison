# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class Color:
    r: int = 0
    g: int = 0
    b: int = 0
    a: int = 0

_Test_Color_t = IcePy.defineStruct(
    "::Test::Color",
    Color,
    (),
    (
        ("r", (), IcePy._t_int),
        ("g", (), IcePy._t_int),
        ("b", (), IcePy._t_int),
        ("a", (), IcePy._t_int)
    ))

__all__ = ["Color", "_Test_Color_t"]
