# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test2.Sub2.NestedEnum2 import NestedEnum2
from Test2.Sub2.NestedEnum2 import _Test2_Sub2_NestedEnum2_t

from dataclasses import dataclass


@dataclass
class NestedStruct2:
    bo: bool = False
    by: int = 0
    sh: int = 0
    i: int = 0
    l: int = 0
    f: float = 0.0
    d: float = 0.0
    str: str = ""
    e: NestedEnum2 = NestedEnum2.nestedEnum4

_Test2_Sub2_NestedStruct2_t = IcePy.defineStruct(
    "::Test2::Sub2::NestedStruct2",
    NestedStruct2,
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
        ("e", (), _Test2_Sub2_NestedEnum2_t)
    ))

__all__ = ["NestedStruct2", "_Test2_Sub2_NestedStruct2_t"]
