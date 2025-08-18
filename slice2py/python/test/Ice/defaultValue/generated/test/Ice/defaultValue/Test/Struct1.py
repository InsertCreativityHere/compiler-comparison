# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.defaultValue.Test.Color import Color
from generated.test.Ice.defaultValue.Test.Color import _generated_test_Ice_defaultValue_Test_Color_t

from generated.test.Ice.defaultValue.Test.Nested.Color import Color as _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color
from generated.test.Ice.defaultValue.Test.Nested.Color import _generated_test_Ice_defaultValue_Test_Nested_Color_t


@dataclass
class Struct1:
    boolFalse: bool = False
    boolTrue: bool = True
    b: int = 254
    s: int = 16000
    i: int = 3
    l: int = 4
    f: float = 5.1
    d: float = 6.2
    str: str = "foo \\ \"bar\n \r\n\t\v\f\a\b? \a \a"
    c1: Color = Color.red
    c2: Color = Color.green
    c3: Color = Color.blue
    nc1: _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color = _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color.red
    nc2: _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color = _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color.green
    nc3: _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color = _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color.blue
    noDefault: str = ""
    zeroI: int = 0
    zeroL: int = 0
    zeroF: float = 0
    zeroDotF: float = 0
    zeroD: float = 0
    zeroDotD: float = 0

_generated_test_Ice_defaultValue_Test_Struct1_t = IcePy.defineStruct(
    "::Test::Struct1",
    Struct1,
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
        ("str", (), IcePy._t_string),
        ("c1", (), _generated_test_Ice_defaultValue_Test_Color_t),
        ("c2", (), _generated_test_Ice_defaultValue_Test_Color_t),
        ("c3", (), _generated_test_Ice_defaultValue_Test_Color_t),
        ("nc1", (), _generated_test_Ice_defaultValue_Test_Nested_Color_t),
        ("nc2", (), _generated_test_Ice_defaultValue_Test_Nested_Color_t),
        ("nc3", (), _generated_test_Ice_defaultValue_Test_Nested_Color_t),
        ("noDefault", (), IcePy._t_string),
        ("zeroI", (), IcePy._t_int),
        ("zeroL", (), IcePy._t_long),
        ("zeroF", (), IcePy._t_float),
        ("zeroDotF", (), IcePy._t_float),
        ("zeroD", (), IcePy._t_double),
        ("zeroDotD", (), IcePy._t_double)
    ))

__all__ = ["Struct1", "_generated_test_Ice_defaultValue_Test_Struct1_t"]
