# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass
class PointF:
    x: float = 0.0
    y: float = 0.0
    z: float = 0.0

_Test_PointF_t = IcePy.defineStruct(
    "::Test::PointF",
    PointF,
    (),
    (
        ("x", (), IcePy._t_float),
        ("y", (), IcePy._t_float),
        ("z", (), IcePy._t_float)
    ))

__all__ = ["PointF", "_Test_PointF_t"]
