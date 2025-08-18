# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Base import Base

from Test.Base_forward import _Test_Base_t

from Test.Color import Color
from Test.Color import _Test_Color_t

from Test.Derived_forward import _Test_Derived_t

from Test.Nested.Color import Color as _m_Test_Nested_Color_Color
from Test.Nested.Color import _Test_Nested_Color_t

from dataclasses import dataclass

@dataclass(eq=False)
class Derived(Base):
    c1: Color = Color.red
    c2: Color = Color.green
    c3: Color = Color.blue
    nc1: _m_Test_Nested_Color_Color = _m_Test_Nested_Color_Color.red
    nc2: _m_Test_Nested_Color_Color = _m_Test_Nested_Color_Color.green
    nc3: _m_Test_Nested_Color_Color = _m_Test_Nested_Color_Color.blue

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Derived"

_Test_Derived_t = IcePy.defineValue(
    "::Test::Derived",
    Derived,
    -1,
    (),
    False,
    _Test_Base_t,
    (
        ("c1", (), _Test_Color_t, False, 0),
        ("c2", (), _Test_Color_t, False, 0),
        ("c3", (), _Test_Color_t, False, 0),
        ("nc1", (), _Test_Nested_Color_t, False, 0),
        ("nc2", (), _Test_Nested_Color_t, False, 0),
        ("nc3", (), _Test_Nested_Color_t, False, 0)
    ))

setattr(Derived, '_ice_type', _Test_Derived_t)

__all__ = ["Derived", "_Test_Derived_t"]
