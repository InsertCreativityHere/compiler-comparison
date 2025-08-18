# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.BoolSeq import _Ice_BoolSeq_t

from Ice.ByteSeq import _Ice_ByteSeq_t

from Ice.DoubleSeq import _Ice_DoubleSeq_t

from Ice.FloatSeq import _Ice_FloatSeq_t

from Ice.IntSeq import _Ice_IntSeq_t

from Ice.LongSeq import _Ice_LongSeq_t

from Ice.ShortSeq import _Ice_ShortSeq_t

from Ice.StringSeq import _Ice_StringSeq_t

from Ice.Value import Value

from Ice.Value_forward import _Ice_Value_t

from Test.LargeStruct import LargeStruct
from Test.LargeStruct import _Test_LargeStruct_t

from Test.MyClassS import _Test_MyClassS_t

from Test.MyClass_forward import _Test_MyClass_t

from Test.MyEnumS import _Test_MyEnumS_t

from Test.MyInterface_forward import _Test_MyInterfacePrx_t

from Test.StringMyClassD import _Test_StringMyClassD_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.MyClass import MyClass
    from Test.MyEnum import MyEnum
    from Test.MyInterface import MyInterfacePrx

@dataclass(eq=False)
class MyClass(Value):
    c: MyClass | None = None
    prx: MyInterfacePrx | None = None
    o: Value | None = None
    s: LargeStruct = field(default_factory=LargeStruct)
    seq1: list[bool] = field(default_factory=list)
    seq2: bytes = field(default_factory=bytes)
    seq3: list[int] = field(default_factory=list)
    seq4: list[int] = field(default_factory=list)
    seq5: list[int] = field(default_factory=list)
    seq6: list[float] = field(default_factory=list)
    seq7: list[float] = field(default_factory=list)
    seq8: list[str] = field(default_factory=list)
    seq9: list[MyEnum] = field(default_factory=list)
    seq10: list[MyClass | None] = field(default_factory=list)
    d: dict[str, MyClass | None] = field(default_factory=dict)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyClass"

_Test_MyClass_t = IcePy.defineValue(
    "::Test::MyClass",
    MyClass,
    -1,
    (),
    False,
    None,
    (
        ("c", (), _Test_MyClass_t, False, 0),
        ("prx", (), _Test_MyInterfacePrx_t, False, 0),
        ("o", (), _Ice_Value_t, False, 0),
        ("s", (), _Test_LargeStruct_t, False, 0),
        ("seq1", (), _Ice_BoolSeq_t, False, 0),
        ("seq2", (), _Ice_ByteSeq_t, False, 0),
        ("seq3", (), _Ice_ShortSeq_t, False, 0),
        ("seq4", (), _Ice_IntSeq_t, False, 0),
        ("seq5", (), _Ice_LongSeq_t, False, 0),
        ("seq6", (), _Ice_FloatSeq_t, False, 0),
        ("seq7", (), _Ice_DoubleSeq_t, False, 0),
        ("seq8", (), _Ice_StringSeq_t, False, 0),
        ("seq9", (), _Test_MyEnumS_t, False, 0),
        ("seq10", (), _Test_MyClassS_t, False, 0),
        ("d", (), _Test_StringMyClassD_t, False, 0)
    ))

setattr(MyClass, '_ice_type', _Test_MyClass_t)

__all__ = ["MyClass", "_Test_MyClass_t"]
