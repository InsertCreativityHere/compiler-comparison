# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Ice.Value_forward import _Ice_Value_t

from Test.BaseS import _Test_BaseS_t

from Test.Base_forward import _Test_Base_t

from Test.ByteBoolD import _Test_ByteBoolD_t

from Test.ByteS import _Test_ByteS_t

from Test.IntS import _Test_IntS_t

from Test.MyEnumS import _Test_MyEnumS_t

from Test.ShortIntD import _Test_ShortIntD_t

from Test.StringBaseD import _Test_StringBaseD_t

from Test.StringMyEnumD import _Test_StringMyEnumD_t

from Test.Struct1 import Struct1
from Test.Struct1 import _Test_Struct1_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.Base import Base
    from Test.MyEnum import MyEnum

@dataclass(eq=False)
class Base(Value):
    b: Base | None = None
    o: Value | None = None
    s: Struct1 = field(default_factory=Struct1)
    seq1: bytes = field(default_factory=bytes)
    seq2: list[int] = field(default_factory=list)
    seq3: list[MyEnum] = field(default_factory=list)
    seq4: list[Base | None] = field(default_factory=list)
    d1: dict[int, bool] = field(default_factory=dict)
    d2: dict[int, int] = field(default_factory=dict)
    d3: dict[str, MyEnum] = field(default_factory=dict)
    d4: dict[str, Base | None] = field(default_factory=dict)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Base"

_Test_Base_t = IcePy.defineValue(
    "::Test::Base",
    Base,
    -1,
    (),
    False,
    None,
    (
        ("b", (), _Test_Base_t, False, 0),
        ("o", (), _Ice_Value_t, False, 0),
        ("s", (), _Test_Struct1_t, False, 0),
        ("seq1", (), _Test_ByteS_t, False, 0),
        ("seq2", (), _Test_IntS_t, False, 0),
        ("seq3", (), _Test_MyEnumS_t, False, 0),
        ("seq4", (), _Test_BaseS_t, False, 0),
        ("d1", (), _Test_ByteBoolD_t, False, 0),
        ("d2", (), _Test_ShortIntD_t, False, 0),
        ("d3", (), _Test_StringMyEnumD_t, False, 0),
        ("d4", (), _Test_StringBaseD_t, False, 0)
    ))

setattr(Base, '_ice_type', _Test_Base_t)

__all__ = ["Base", "_Test_Base_t"]
