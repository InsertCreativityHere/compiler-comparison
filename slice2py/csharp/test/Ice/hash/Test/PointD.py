# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass
class PointD:
    x: float = 0.0
    y: float = 0.0
    z: float = 0.0

_Test_PointD_t = IcePy.defineStruct(
    "::Test::PointD",
    PointD,
    (),
    (
        ("x", (), IcePy._t_double),
        ("y", (), IcePy._t_double),
        ("z", (), IcePy._t_double)
    ))

__all__ = ["PointD", "_Test_PointD_t"]
