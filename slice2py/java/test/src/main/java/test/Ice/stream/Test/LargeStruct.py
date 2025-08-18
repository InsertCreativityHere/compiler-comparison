# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.MyEnum import MyEnum
from Test.MyEnum import _Test_MyEnum_t

from Test.MyInterface_forward import _Test_MyInterfacePrx_t

from Test.SerialSmall import _Test_SerialSmall_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.MyInterface import MyInterfacePrx


@dataclass
class LargeStruct:
    bo: bool = False
    by: int = 0
    sh: int = 0
    i: int = 0
    l: int = 0
    f: float = 0.0
    d: float = 0.0
    str: str = ""
    e: MyEnum = MyEnum.enum1
    p: MyInterfacePrx | None = None
    ss: bytes = field(default_factory=bytes)

_Test_LargeStruct_t = IcePy.defineStruct(
    "::Test::LargeStruct",
    LargeStruct,
    (),
    (
        ("bo", (), IcePy._t_bool),
        ("by", (), IcePy._t_byte),
        ("sh", (), IcePy._t_short),
        ("i", (), IcePy._t_int),
        ("l", (), IcePy._t_long),
        ("f", (), IcePy._t_float),
        ("d", (), IcePy._t_double),
        ("str", (), IcePy._t_string),
        ("e", (), _Test_MyEnum_t),
        ("p", (), _Test_MyInterfacePrx_t),
        ("ss", (), _Test_SerialSmall_t)
    ))

__all__ = ["LargeStruct", "_Test_LargeStruct_t"]
