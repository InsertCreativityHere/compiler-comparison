# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Points import _Test_Points_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.Point import Point


@dataclass
class Polyline:
    vertices: list[Point] = field(default_factory=list)

_Test_Polyline_t = IcePy.defineStruct(
    "::Test::Polyline",
    Polyline,
    (),
    (("vertices", (), _Test_Points_t),))

__all__ = ["Polyline", "_Test_Polyline_t"]
