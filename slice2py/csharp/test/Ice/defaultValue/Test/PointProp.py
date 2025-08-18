# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class PointProp:
    x: int = 0
    y: int = 42

_Test_PointProp_t = IcePy.defineStruct(
    "::Test::PointProp",
    PointProp,
    (),
    (
        ("x", (), IcePy._t_int),
        ("y", (), IcePy._t_int)
    ))

__all__ = ["PointProp", "_Test_PointProp_t"]
