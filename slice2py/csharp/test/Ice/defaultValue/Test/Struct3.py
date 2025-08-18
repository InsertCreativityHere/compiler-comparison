# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Color import Color
from Test.Color import _Test_Color_t

from Test.Nested.Color import Color as _m_Test_Nested_Color_Color
from Test.Nested.Color import _Test_Nested_Color_t

from dataclasses import dataclass


@dataclass
class Struct3:
    boolFalse: bool = False
    boolTrue: bool = True
    b: int = 1
    s: int = 2
    i: int = 3
    l: int = 4
    f: float = 5.1
    d: float = 6.2
    c1: Color = Color.red
    c2: Color = Color.green
    c3: Color = Color.blue
    nc1: _m_Test_Nested_Color_Color = _m_Test_Nested_Color_Color.red
    nc2: _m_Test_Nested_Color_Color = _m_Test_Nested_Color_Color.green
    nc3: _m_Test_Nested_Color_Color = _m_Test_Nested_Color_Color.blue
    zeroI: int = 0
    zeroL: int = 0
    zeroF: float = 0
    zeroDotF: float = 0
    zeroD: float = 0
    zeroDotD: float = 0

_Test_Struct3_t = IcePy.defineStruct(
    "::Test::Struct3",
    Struct3,
    (),
    (
        ("boolFalse", (), IcePy._t_bool),
        ("boolTrue", (), IcePy._t_bool),
        ("b", (), IcePy._t_byte),
        ("s", (), IcePy._t_short),
        ("i", (), IcePy._t_int),
        ("l", (), IcePy._t_long),
        ("f", (), IcePy._t_float),
        ("d", (), IcePy._t_double),
        ("c1", (), _Test_Color_t),
        ("c2", (), _Test_Color_t),
        ("c3", (), _Test_Color_t),
        ("nc1", (), _Test_Nested_Color_t),
        ("nc2", (), _Test_Nested_Color_t),
        ("nc3", (), _Test_Nested_Color_t),
        ("zeroI", (), IcePy._t_int),
        ("zeroL", (), IcePy._t_long),
        ("zeroF", (), IcePy._t_float),
        ("zeroDotF", (), IcePy._t_float),
        ("zeroD", (), IcePy._t_double),
        ("zeroDotD", (), IcePy._t_double)
    ))

__all__ = ["Struct3", "_Test_Struct3_t"]
