# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class Point:
    x: int = 0
    y: int = 0

_Test_Point_t = IcePy.defineStruct(
    "::Test::Point",
    Point,
    (),
    (
        ("x", (), IcePy._t_int),
        ("y", (), IcePy._t_int)
    ))

__all__ = ["Point", "_Test_Point_t"]
