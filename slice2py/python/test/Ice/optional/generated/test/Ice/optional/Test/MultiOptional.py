# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.optional.Test.BoolSeq import _generated_test_Ice_optional_Test_BoolSeq_t

from generated.test.Ice.optional.Test.ByteSeq import _generated_test_Ice_optional_Test_ByteSeq_t

from generated.test.Ice.optional.Test.FixedStruct import FixedStruct
from generated.test.Ice.optional.Test.FixedStruct import _generated_test_Ice_optional_Test_FixedStruct_t

from generated.test.Ice.optional.Test.FixedStructSeq import _generated_test_Ice_optional_Test_FixedStructSeq_t

from generated.test.Ice.optional.Test.IntEnumDict import _generated_test_Ice_optional_Test_IntEnumDict_t

from generated.test.Ice.optional.Test.IntFixedStructDict import _generated_test_Ice_optional_Test_IntFixedStructDict_t

from generated.test.Ice.optional.Test.IntIntDict import _generated_test_Ice_optional_Test_IntIntDict_t

from generated.test.Ice.optional.Test.IntMyInterfacePrxDict import _generated_test_Ice_optional_Test_IntMyInterfacePrxDict_t

from generated.test.Ice.optional.Test.IntVarStructDict import _generated_test_Ice_optional_Test_IntVarStructDict_t

from generated.test.Ice.optional.Test.MultiOptional_forward import _generated_test_Ice_optional_Test_MultiOptional_t

from generated.test.Ice.optional.Test.MyEnum import MyEnum
from generated.test.Ice.optional.Test.MyEnum import _generated_test_Ice_optional_Test_MyEnum_t

from generated.test.Ice.optional.Test.MyEnumSeq import _generated_test_Ice_optional_Test_MyEnumSeq_t

from generated.test.Ice.optional.Test.MyInterfacePrxSeq import _generated_test_Ice_optional_Test_MyInterfacePrxSeq_t

from generated.test.Ice.optional.Test.MyInterface_forward import _generated_test_Ice_optional_Test_MyInterfacePrx_t

from generated.test.Ice.optional.Test.Serializable import _generated_test_Ice_optional_Test_Serializable_t

from generated.test.Ice.optional.Test.ShortSeq import _generated_test_Ice_optional_Test_ShortSeq_t

from generated.test.Ice.optional.Test.StringIntDict import _generated_test_Ice_optional_Test_StringIntDict_t

from generated.test.Ice.optional.Test.StringSeq import _generated_test_Ice_optional_Test_StringSeq_t

from generated.test.Ice.optional.Test.VarStruct import VarStruct
from generated.test.Ice.optional.Test.VarStruct import _generated_test_Ice_optional_Test_VarStruct_t

from generated.test.Ice.optional.Test.VarStructSeq import _generated_test_Ice_optional_Test_VarStructSeq_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.optional.Test.MyInterface import MyInterfacePrx

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

_generated_test_Ice_optional_Test_MultiOptional_t = IcePy.defineValue(
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
        ("i", (), _generated_test_Ice_optional_Test_MyEnum_t, True, 9),
        ("j", (), _generated_test_Ice_optional_Test_MyInterfacePrx_t, True, 10),
        ("bs", (), _generated_test_Ice_optional_Test_ByteSeq_t, True, 12),
        ("ss", (), _generated_test_Ice_optional_Test_StringSeq_t, True, 13),
        ("iid", (), _generated_test_Ice_optional_Test_IntIntDict_t, True, 14),
        ("sid", (), _generated_test_Ice_optional_Test_StringIntDict_t, True, 15),
        ("fs", (), _generated_test_Ice_optional_Test_FixedStruct_t, True, 16),
        ("vs", (), _generated_test_Ice_optional_Test_VarStruct_t, True, 17),
        ("shs", (), _generated_test_Ice_optional_Test_ShortSeq_t, True, 18),
        ("es", (), _generated_test_Ice_optional_Test_MyEnumSeq_t, True, 19),
        ("fss", (), _generated_test_Ice_optional_Test_FixedStructSeq_t, True, 20),
        ("vss", (), _generated_test_Ice_optional_Test_VarStructSeq_t, True, 21),
        ("mips", (), _generated_test_Ice_optional_Test_MyInterfacePrxSeq_t, True, 23),
        ("ied", (), _generated_test_Ice_optional_Test_IntEnumDict_t, True, 24),
        ("ifsd", (), _generated_test_Ice_optional_Test_IntFixedStructDict_t, True, 25),
        ("ivsd", (), _generated_test_Ice_optional_Test_IntVarStructDict_t, True, 26),
        ("imipd", (), _generated_test_Ice_optional_Test_IntMyInterfacePrxDict_t, True, 28),
        ("bos", (), _generated_test_Ice_optional_Test_BoolSeq_t, True, 29),
        ("ser", (), _generated_test_Ice_optional_Test_Serializable_t, True, 30)
    ))

setattr(MultiOptional, '_ice_type', _generated_test_Ice_optional_Test_MultiOptional_t)

__all__ = ["MultiOptional", "_generated_test_Ice_optional_Test_MultiOptional_t"]
