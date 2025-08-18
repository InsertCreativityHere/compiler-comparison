# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Color import Color
from Test.Color import _Test_Color_t

from Test.Pen_forward import _Test_Pen_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.Pen import Pen


@dataclass
class Draw:
    backgroundColor: Color = field(default_factory=Color)
    pen: Pen | None = None
    shared: bool = False

_Test_Draw_t = IcePy.defineStruct(
    "::Test::Draw",
    Draw,
    (),
    (
        ("backgroundColor", (), _Test_Color_t),
        ("pen", (), _Test_Pen_t),
        ("shared", (), IcePy._t_bool)
    ))

__all__ = ["Draw", "_Test_Draw_t"]
