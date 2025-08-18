# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.defaultValue.Test.Base import Base

from generated.test.Ice.defaultValue.Test.Base_forward import _generated_test_Ice_defaultValue_Test_Base_t

from generated.test.Ice.defaultValue.Test.Color import Color
from generated.test.Ice.defaultValue.Test.Color import _generated_test_Ice_defaultValue_Test_Color_t

from generated.test.Ice.defaultValue.Test.Derived_forward import _generated_test_Ice_defaultValue_Test_Derived_t

from generated.test.Ice.defaultValue.Test.Nested.Color import Color as _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color
from generated.test.Ice.defaultValue.Test.Nested.Color import _generated_test_Ice_defaultValue_Test_Nested_Color_t

@dataclass(eq=False)
class Derived(Base):
    c1: Color = Color.red
    c2: Color = Color.green
    c3: Color = Color.blue
    nc1: _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color = _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color.red
    nc2: _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color = _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color.green
    nc3: _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color = _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color.blue

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Derived"

_generated_test_Ice_defaultValue_Test_Derived_t = IcePy.defineValue(
    "::Test::Derived",
    Derived,
    -1,
    (),
    False,
    _generated_test_Ice_defaultValue_Test_Base_t,
    (
        ("c1", (), _generated_test_Ice_defaultValue_Test_Color_t, False, 0),
        ("c2", (), _generated_test_Ice_defaultValue_Test_Color_t, False, 0),
        ("c3", (), _generated_test_Ice_defaultValue_Test_Color_t, False, 0),
        ("nc1", (), _generated_test_Ice_defaultValue_Test_Nested_Color_t, False, 0),
        ("nc2", (), _generated_test_Ice_defaultValue_Test_Nested_Color_t, False, 0),
        ("nc3", (), _generated_test_Ice_defaultValue_Test_Nested_Color_t, False, 0)
    ))

setattr(Derived, '_ice_type', _generated_test_Ice_defaultValue_Test_Derived_t)

__all__ = ["Derived", "_generated_test_Ice_defaultValue_Test_Derived_t"]
