# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.defaultValue.Test.Color import Color
from generated.test.Ice.defaultValue.Test.Color import _generated_test_Ice_defaultValue_Test_Color_t

from generated.test.Ice.defaultValue.Test.ConstBool import ConstBool

from generated.test.Ice.defaultValue.Test.ConstByte import ConstByte

from generated.test.Ice.defaultValue.Test.ConstColor1 import ConstColor1

from generated.test.Ice.defaultValue.Test.ConstColor2 import ConstColor2

from generated.test.Ice.defaultValue.Test.ConstColor3 import ConstColor3

from generated.test.Ice.defaultValue.Test.ConstDouble import ConstDouble

from generated.test.Ice.defaultValue.Test.ConstFloat import ConstFloat

from generated.test.Ice.defaultValue.Test.ConstInt import ConstInt

from generated.test.Ice.defaultValue.Test.ConstLong import ConstLong

from generated.test.Ice.defaultValue.Test.ConstNestedColor1 import ConstNestedColor1

from generated.test.Ice.defaultValue.Test.ConstNestedColor2 import ConstNestedColor2

from generated.test.Ice.defaultValue.Test.ConstNestedColor3 import ConstNestedColor3

from generated.test.Ice.defaultValue.Test.ConstShort import ConstShort

from generated.test.Ice.defaultValue.Test.ConstString import ConstString

from generated.test.Ice.defaultValue.Test.ConstZeroD import ConstZeroD

from generated.test.Ice.defaultValue.Test.ConstZeroDotD import ConstZeroDotD

from generated.test.Ice.defaultValue.Test.ConstZeroDotF import ConstZeroDotF

from generated.test.Ice.defaultValue.Test.ConstZeroF import ConstZeroF

from generated.test.Ice.defaultValue.Test.ConstZeroI import ConstZeroI

from generated.test.Ice.defaultValue.Test.ConstZeroL import ConstZeroL

from generated.test.Ice.defaultValue.Test.Nested.Color import Color as _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color
from generated.test.Ice.defaultValue.Test.Nested.Color import _generated_test_Ice_defaultValue_Test_Nested_Color_t


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
    nc1: _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color = ConstNestedColor1
    nc2: _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color = ConstNestedColor2
    nc3: _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color = ConstNestedColor3
    zeroI: int = ConstZeroI
    zeroL: int = ConstZeroL
    zeroF: float = ConstZeroF
    zeroDotF: float = ConstZeroDotF
    zeroD: float = ConstZeroD
    zeroDotD: float = ConstZeroDotD

_generated_test_Ice_defaultValue_Test_Struct2_t = IcePy.defineStruct(
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
        ("c1", (), _generated_test_Ice_defaultValue_Test_Color_t),
        ("c2", (), _generated_test_Ice_defaultValue_Test_Color_t),
        ("c3", (), _generated_test_Ice_defaultValue_Test_Color_t),
        ("nc1", (), _generated_test_Ice_defaultValue_Test_Nested_Color_t),
        ("nc2", (), _generated_test_Ice_defaultValue_Test_Nested_Color_t),
        ("nc3", (), _generated_test_Ice_defaultValue_Test_Nested_Color_t),
        ("zeroI", (), IcePy._t_int),
        ("zeroL", (), IcePy._t_long),
        ("zeroF", (), IcePy._t_float),
        ("zeroDotF", (), IcePy._t_float),
        ("zeroD", (), IcePy._t_double),
        ("zeroDotD", (), IcePy._t_double)
    ))

__all__ = ["Struct2", "_generated_test_Ice_defaultValue_Test_Struct2_t"]
