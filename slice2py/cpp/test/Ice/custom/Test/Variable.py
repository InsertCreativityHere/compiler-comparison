# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.BoolList import _Test_BoolList_t

from Test.StringSeq import _Test_StringSeq_t

from dataclasses import dataclass
from dataclasses import field


@dataclass
class Variable:
    s: str = ""
    bl: list[bool] = field(default_factory=list)
    ss: list[str] = field(default_factory=list)

_Test_Variable_t = IcePy.defineStruct(
    "::Test::Variable",
    Variable,
    (),
    (
        ("s", (), IcePy._t_string),
        ("bl", (), _Test_BoolList_t),
        ("ss", (), _Test_StringSeq_t)
    ))

__all__ = ["Variable", "_Test_Variable_t"]
