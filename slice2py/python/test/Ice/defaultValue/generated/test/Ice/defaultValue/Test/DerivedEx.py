# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.defaultValue.Test.BaseEx import BaseEx
from generated.test.Ice.defaultValue.Test.BaseEx import _generated_test_Ice_defaultValue_Test_BaseEx_t

from generated.test.Ice.defaultValue.Test.Color import Color
from generated.test.Ice.defaultValue.Test.Color import _generated_test_Ice_defaultValue_Test_Color_t

from generated.test.Ice.defaultValue.Test.ConstColor1 import ConstColor1

from generated.test.Ice.defaultValue.Test.ConstColor2 import ConstColor2

from generated.test.Ice.defaultValue.Test.ConstColor3 import ConstColor3

from generated.test.Ice.defaultValue.Test.ConstNestedColor1 import ConstNestedColor1

from generated.test.Ice.defaultValue.Test.ConstNestedColor2 import ConstNestedColor2

from generated.test.Ice.defaultValue.Test.ConstNestedColor3 import ConstNestedColor3

from generated.test.Ice.defaultValue.Test.Nested.Color import Color as _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color
from generated.test.Ice.defaultValue.Test.Nested.Color import _generated_test_Ice_defaultValue_Test_Nested_Color_t


@dataclass
class DerivedEx(BaseEx):
    c1: Color = ConstColor1
    c2: Color = ConstColor2
    c3: Color = ConstColor3
    nc1: _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color = ConstNestedColor1
    nc2: _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color = ConstNestedColor2
    nc3: _m_generated_test_Ice_defaultValue_Test_Nested_Color_Color = ConstNestedColor3

    _ice_id = "::Test::DerivedEx"

_generated_test_Ice_defaultValue_Test_DerivedEx_t = IcePy.defineException(
    "::Test::DerivedEx",
    DerivedEx,
    (),
    _generated_test_Ice_defaultValue_Test_BaseEx_t,
    (
        ("c1", (), _generated_test_Ice_defaultValue_Test_Color_t, False, 0),
        ("c2", (), _generated_test_Ice_defaultValue_Test_Color_t, False, 0),
        ("c3", (), _generated_test_Ice_defaultValue_Test_Color_t, False, 0),
        ("nc1", (), _generated_test_Ice_defaultValue_Test_Nested_Color_t, False, 0),
        ("nc2", (), _generated_test_Ice_defaultValue_Test_Nested_Color_t, False, 0),
        ("nc3", (), _generated_test_Ice_defaultValue_Test_Nested_Color_t, False, 0)
    ))

setattr(DerivedEx, '_ice_type', _generated_test_Ice_defaultValue_Test_DerivedEx_t)

__all__ = ["DerivedEx", "_generated_test_Ice_defaultValue_Test_DerivedEx_t"]
