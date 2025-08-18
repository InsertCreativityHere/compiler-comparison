# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Initial_forward import _Test_InitialPrx_t

from Test.MyEnum import MyEnum
from Test.MyEnum import _Test_MyEnum_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.Initial import InitialPrx


@dataclass
class Struct1:
    bo: bool = False
    by: int = 0
    sh: int = 0
    i: int = 0
    l: int = 0
    f: float = 0.0
    d: float = 0.0
    str: str = ""
    e: MyEnum = MyEnum.enum1
    p: InitialPrx | None = None

_Test_Struct1_t = IcePy.defineStruct(
    "::Test::Struct1",
    Struct1,
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
        ("p", (), _Test_InitialPrx_t)
    ))

__all__ = ["Struct1", "_Test_Struct1_t"]
