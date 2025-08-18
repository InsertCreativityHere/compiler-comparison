# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.ByteSeq import _Test_ByteSeq_t

from Test.Color import Color
from Test.Color import _Test_Color_t

from Test.InnerStruct import InnerStruct
from Test.InnerStruct import _Test_InnerStruct_t

from Test.InnerStruct2 import InnerStruct2
from Test.InnerStruct2 import _Test_InnerStruct2_t

from Test.IntSeq import _Test_IntSeq_t

from Test.IntStringDict import _Test_IntStringDict_t

from dataclasses import dataclass
from dataclasses import field


@dataclass
class StructNoDefaults:
    bo: bool = False
    b: int = 0
    s: int = 0
    i: int = 0
    l: int = 0
    f: float = 0.0
    d: float = 0.0
    str: str = ""
    c1: Color = Color.red
    bs: bytes = field(default_factory=bytes)
    iseq: list[int] = field(default_factory=list)
    st: InnerStruct = field(default_factory=InnerStruct)
    st2: InnerStruct2 = field(default_factory=InnerStruct2)
    dict: dict[int, str] = field(default_factory=dict)

_Test_StructNoDefaults_t = IcePy.defineStruct(
    "::Test::StructNoDefaults",
    StructNoDefaults,
    (),
    (
        ("bo", (), IcePy._t_bool),
        ("b", (), IcePy._t_byte),
        ("s", (), IcePy._t_short),
        ("i", (), IcePy._t_int),
        ("l", (), IcePy._t_long),
        ("f", (), IcePy._t_float),
        ("d", (), IcePy._t_double),
        ("str", (), IcePy._t_string),
        ("c1", (), _Test_Color_t),
        ("bs", (), _Test_ByteSeq_t),
        ("iseq", (), _Test_IntSeq_t),
        ("st", (), _Test_InnerStruct_t),
        ("st2", (), _Test_InnerStruct2_t),
        ("dict", (), _Test_IntStringDict_t)
    ))

__all__ = ["StructNoDefaults", "_Test_StructNoDefaults_t"]
