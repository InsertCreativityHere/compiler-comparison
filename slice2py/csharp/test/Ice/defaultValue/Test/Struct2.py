# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Color import Color
from Test.Color import _Test_Color_t

from Test.ConstBool import ConstBool

from Test.ConstByte import ConstByte

from Test.ConstColor1 import ConstColor1

from Test.ConstColor2 import ConstColor2

from Test.ConstColor3 import ConstColor3

from Test.ConstDouble import ConstDouble

from Test.ConstFloat import ConstFloat

from Test.ConstInt import ConstInt

from Test.ConstLong import ConstLong

from Test.ConstNestedColor1 import ConstNestedColor1

from Test.ConstNestedColor2 import ConstNestedColor2

from Test.ConstNestedColor3 import ConstNestedColor3

from Test.ConstShort import ConstShort

from Test.ConstString import ConstString

from Test.ConstZeroD import ConstZeroD

from Test.ConstZeroDotD import ConstZeroDotD

from Test.ConstZeroDotF import ConstZeroDotF

from Test.ConstZeroF import ConstZeroF

from Test.ConstZeroI import ConstZeroI

from Test.ConstZeroL import ConstZeroL

from Test.Nested.Color import Color as _m_Test_Nested_Color_Color
from Test.Nested.Color import _Test_Nested_Color_t

from dataclasses import dataclass


@dataclass
class Struct2:
    boolTrue: bool = ConstBool
    b: int = ConstByte
    s: int = ConstShort
    i: int = ConstInt
    l: int = ConstLong
    f: float = ConstFloat
    d: float = ConstDouble
    str: str = ConstString
    c1: Color = ConstColor1
    c2: Color = ConstColor2
    c3: Color = ConstColor3
    nc1: _m_Test_Nested_Color_Color = ConstNestedColor1
    nc2: _m_Test_Nested_Color_Color = ConstNestedColor2
    nc3: _m_Test_Nested_Color_Color = ConstNestedColor3
    zeroI: int = ConstZeroI
    zeroL: int = ConstZeroL
    zeroF: float = ConstZeroF
    zeroDotF: float = ConstZeroDotF
    zeroD: float = ConstZeroD
    zeroDotD: float = ConstZeroDotD

_Test_Struct2_t = IcePy.defineStruct(
    "::Test::Struct2",
    Struct2,
    (),
    (
        ("boolTrue", (), IcePy._t_bool),
        ("b", (), IcePy._t_byte),
        ("s", (), IcePy._t_short),
        ("i", (), IcePy._t_int),
        ("l", (), IcePy._t_long),
        ("f", (), IcePy._t_float),
        ("d", (), IcePy._t_double),
        ("str", (), IcePy._t_string),
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

__all__ = ["Struct2", "_Test_Struct2_t"]
