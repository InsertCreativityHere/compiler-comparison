# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ByteSeq import _Ice_ByteSeq_t

from Ice.IntSeq import _Ice_IntSeq_t

from Ice.StringSeq import _Ice_StringSeq_t

from Ice.Value import Value

from Test.ByteBoolD import _Test_ByteBoolD_t

from Test.LargeStruct import LargeStruct
from Test.LargeStruct import _Test_LargeStruct_t

from Test.MyEnum import MyEnum
from Test.MyEnum import _Test_MyEnum_t

from Test.MyEnumS import _Test_MyEnumS_t

from Test.OptionalClass_forward import _Test_OptionalClass_t

from Test.Point import Point
from Test.Point import _Test_Point_t

from Test.ShortIntD import _Test_ShortIntD_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

@dataclass(eq=False)
class OptionalClass(Value):
    bo: bool = False
    by: int = 0
    sh: int | None = None
    i: int | None = None
    s: LargeStruct | None = None
    enumS4: list[MyEnum] | None = None
    byteBoolD6: dict[int, bool] | None = None
    shortIntD7: dict[int, int] | None = None
    enum8: MyEnum | None = None
    intSeq12: list[int] | None = None
    byteSeq13: bytes | None = None
    stringSeq14: list[str] | None = None
    p15: Point | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::OptionalClass"

_Test_OptionalClass_t = IcePy.defineValue(
    "::Test::OptionalClass",
    OptionalClass,
    -1,
    (),
    False,
    None,
    (
        ("bo", (), IcePy._t_bool, False, 0),
        ("by", (), IcePy._t_byte, False, 0),
        ("sh", (), IcePy._t_short, True, 1),
        ("i", (), IcePy._t_int, True, 2),
        ("s", (), _Test_LargeStruct_t, True, 3),
        ("enumS4", (), _Test_MyEnumS_t, True, 4),
        ("byteBoolD6", (), _Test_ByteBoolD_t, True, 6),
        ("shortIntD7", (), _Test_ShortIntD_t, True, 7),
        ("enum8", (), _Test_MyEnum_t, True, 8),
        ("intSeq12", (), _Ice_IntSeq_t, True, 12),
        ("byteSeq13", (), _Ice_ByteSeq_t, True, 13),
        ("stringSeq14", (), _Ice_StringSeq_t, True, 14),
        ("p15", (), _Test_Point_t, True, 15)
    ))

setattr(OptionalClass, '_ice_type', _Test_OptionalClass_t)

__all__ = ["OptionalClass", "_Test_OptionalClass_t"]
