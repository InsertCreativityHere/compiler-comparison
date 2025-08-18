# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.BaseEx import BaseEx
from Test.BaseEx import _Test_BaseEx_t

from Test.Color import Color
from Test.Color import _Test_Color_t

from Test.ConstColor1 import ConstColor1

from Test.ConstColor2 import ConstColor2

from Test.ConstColor3 import ConstColor3

from Test.ConstNestedColor1 import ConstNestedColor1

from Test.ConstNestedColor2 import ConstNestedColor2

from Test.ConstNestedColor3 import ConstNestedColor3

from Test.Nested.Color import Color as _m_Test_Nested_Color_Color
from Test.Nested.Color import _Test_Nested_Color_t

from dataclasses import dataclass


@dataclass
class DerivedEx(BaseEx):
    c1: Color = ConstColor1
    c2: Color = ConstColor2
    c3: Color = ConstColor3
    nc1: _m_Test_Nested_Color_Color = ConstNestedColor1
    nc2: _m_Test_Nested_Color_Color = ConstNestedColor2
    nc3: _m_Test_Nested_Color_Color = ConstNestedColor3

    _ice_id = "::Test::DerivedEx"

_Test_DerivedEx_t = IcePy.defineException(
    "::Test::DerivedEx",
    DerivedEx,
    (),
    _Test_BaseEx_t,
    (
        ("c1", (), _Test_Color_t, False, 0),
        ("c2", (), _Test_Color_t, False, 0),
        ("c3", (), _Test_Color_t, False, 0),
        ("nc1", (), _Test_Nested_Color_t, False, 0),
        ("nc2", (), _Test_Nested_Color_t, False, 0),
        ("nc3", (), _Test_Nested_Color_t, False, 0)
    ))

setattr(DerivedEx, '_ice_type', _Test_DerivedEx_t)

__all__ = ["DerivedEx", "_Test_DerivedEx_t"]
