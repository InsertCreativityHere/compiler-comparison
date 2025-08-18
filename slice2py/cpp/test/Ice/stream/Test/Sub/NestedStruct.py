# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Sub.NestedEnum import NestedEnum
from Test.Sub.NestedEnum import _Test_Sub_NestedEnum_t

from dataclasses import dataclass


@dataclass
class NestedStruct:
    bo: bool = False
    by: int = 0
    sh: int = 0
    i: int = 0
    l: int = 0
    f: float = 0.0
    d: float = 0.0
    str: str = ""
    e: NestedEnum = NestedEnum.nestedEnum1

_Test_Sub_NestedStruct_t = IcePy.defineStruct(
    "::Test::Sub::NestedStruct",
    NestedStruct,
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
        ("e", (), _Test_Sub_NestedEnum_t)
    ))

__all__ = ["NestedStruct", "_Test_Sub_NestedStruct_t"]
