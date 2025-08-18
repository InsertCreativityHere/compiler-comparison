# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.Color import Color
from Test.Color import _Test_Color_t

from Test.Pen_forward import _Test_Pen_t

from dataclasses import dataclass
from dataclasses import field

@dataclass(eq=False)
class Pen(Value):
    thickness: int = 0
    color: Color = field(default_factory=Color)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Pen"

_Test_Pen_t = IcePy.defineValue(
    "::Test::Pen",
    Pen,
    -1,
    (),
    False,
    None,
    (
        ("thickness", (), IcePy._t_int, False, 0),
        ("color", (), _Test_Color_t, False, 0)
    ))

setattr(Pen, '_ice_type', _Test_Pen_t)

__all__ = ["Pen", "_Test_Pen_t"]
