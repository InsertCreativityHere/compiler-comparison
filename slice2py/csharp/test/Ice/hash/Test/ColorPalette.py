# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.StringColorMap import _Test_StringColorMap_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.Color import Color


@dataclass
class ColorPalette:
    colors: dict[int, Color] = field(default_factory=dict)

_Test_ColorPalette_t = IcePy.defineStruct(
    "::Test::ColorPalette",
    ColorPalette,
    (),
    (("colors", (), _Test_StringColorMap_t),))

__all__ = ["ColorPalette", "_Test_ColorPalette_t"]
