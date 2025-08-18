# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.BoolSeq import _Test_BoolSeq_t

from Test.ByteSeq import _Test_ByteSeq_t

from Test.FixedStruct import FixedStruct
from Test.FixedStruct import _Test_FixedStruct_t

from Test.FixedStructSeq import _Test_FixedStructSeq_t

from Test.IntEnumDict import _Test_IntEnumDict_t

from Test.IntFixedStructDict import _Test_IntFixedStructDict_t

from Test.IntIntDict import _Test_IntIntDict_t

from Test.IntMyInterfacePrxDict import _Test_IntMyInterfacePrxDict_t

from Test.IntVarStructDict import _Test_IntVarStructDict_t

from Test.MultiOptional_forward import _Test_MultiOptional_t

from Test.MyEnum import MyEnum
from Test.MyEnum import _Test_MyEnum_t

from Test.MyEnumSeq import _Test_MyEnumSeq_t

from Test.MyInterfacePrxSeq import _Test_MyInterfacePrxSeq_t

from Test.MyInterface_forward import _Test_MyInterfacePrx_t

from Test.Serializable import _Test_Serializable_t

from Test.ShortSeq import _Test_ShortSeq_t

from Test.StringIntDict import _Test_StringIntDict_t

from Test.StringSeq import _Test_StringSeq_t

from Test.VarStruct import VarStruct
from Test.VarStruct import _Test_VarStruct_t

from Test.VarStructSeq import _Test_VarStructSeq_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.MyInterface import MyInterfacePrx

@dataclass(eq=False)
class MultiOptional(Value):
    a: int | None = None
    b: bool | None = None
    c: int | None = None
    d: int | None = None
    e: int | None = None
    f: float | None = None
    g: float | None = None
    h: str | None = None
    i: MyEnum | None = None
    j: MyInterfacePrx | None = None
    bs: bytes | None = None
    ss: list[str] | None = None
    iid: dict[int, int] | None = None
    sid: dict[str, int] | None = None
    fs: FixedStruct | None = None
    vs: VarStruct | None = None
    shs: list[int] | None = None
    es: list[MyEnum] | None = None
    fss: list[FixedStruct] | None = None
    vss: list[VarStruct] | None = None
    mips: list[MyInterfacePrx | None] | None = None
    ied: dict[int, MyEnum] | None = None
    ifsd: dict[int, FixedStruct] | None = None
    ivsd: dict[int, VarStruct] | None = None
    imipd: dict[int, MyInterfacePrx | None] | None = None
    bos: list[bool] | None = None
    ser: bytes | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MultiOptional"

_Test_MultiOptional_t = IcePy.defineValue(
    "::Test::MultiOptional",
    MultiOptional,
    -1,
    (),
    False,
    None,
    (
        ("a", (), IcePy._t_byte, True, 1),
        ("b", (), IcePy._t_bool, True, 2),
        ("c", (), IcePy._t_short, True, 3),
        ("d", (), IcePy._t_int, True, 4),
        ("e", (), IcePy._t_long, True, 5),
        ("f", (), IcePy._t_float, True, 6),
        ("g", (), IcePy._t_double, True, 7),
        ("h", (), IcePy._t_string, True, 8),
        ("i", (), _Test_MyEnum_t, True, 9),
        ("j", (), _Test_MyInterfacePrx_t, True, 10),
        ("bs", (), _Test_ByteSeq_t, True, 12),
        ("ss", (), _Test_StringSeq_t, True, 13),
        ("iid", (), _Test_IntIntDict_t, True, 14),
        ("sid", (), _Test_StringIntDict_t, True, 15),
        ("fs", (), _Test_FixedStruct_t, True, 16),
        ("vs", (), _Test_VarStruct_t, True, 17),
        ("shs", (), _Test_ShortSeq_t, True, 18),
        ("es", (), _Test_MyEnumSeq_t, True, 19),
        ("fss", (), _Test_FixedStructSeq_t, True, 20),
        ("vss", (), _Test_VarStructSeq_t, True, 21),
        ("mips", (), _Test_MyInterfacePrxSeq_t, True, 23),
        ("ied", (), _Test_IntEnumDict_t, True, 24),
        ("ifsd", (), _Test_IntFixedStructDict_t, True, 25),
        ("ivsd", (), _Test_IntVarStructDict_t, True, 26),
        ("imipd", (), _Test_IntMyInterfacePrxDict_t, True, 28),
        ("bos", (), _Test_BoolSeq_t, True, 29),
        ("ser", (), _Test_Serializable_t, True, 30)
    ))

setattr(MultiOptional, '_ice_type', _Test_MultiOptional_t)

__all__ = ["MultiOptional", "_Test_MultiOptional_t"]
