# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass
from dataclasses import field

from generated.test.Ice.defaultValue.Test.ByteSeq import _generated_test_Ice_defaultValue_Test_ByteSeq_t

from generated.test.Ice.defaultValue.Test.Color import Color
from generated.test.Ice.defaultValue.Test.Color import _generated_test_Ice_defaultValue_Test_Color_t

from generated.test.Ice.defaultValue.Test.InnerStruct import InnerStruct
from generated.test.Ice.defaultValue.Test.InnerStruct import _generated_test_Ice_defaultValue_Test_InnerStruct_t

from generated.test.Ice.defaultValue.Test.IntSeq import _generated_test_Ice_defaultValue_Test_IntSeq_t

from generated.test.Ice.defaultValue.Test.IntStringDict import _generated_test_Ice_defaultValue_Test_IntStringDict_t


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
    isDict: dict[int, str] = field(default_factory=dict)
    st: InnerStruct = field(default_factory=InnerStruct)

_generated_test_Ice_defaultValue_Test_StructNoDefaults_t = IcePy.defineStruct(
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
        ("c1", (), _generated_test_Ice_defaultValue_Test_Color_t),
        ("bs", (), _generated_test_Ice_defaultValue_Test_ByteSeq_t),
        ("iseq", (), _generated_test_Ice_defaultValue_Test_IntSeq_t),
        ("isDict", (), _generated_test_Ice_defaultValue_Test_IntStringDict_t),
        ("st", (), _generated_test_Ice_defaultValue_Test_InnerStruct_t)
    ))

__all__ = ["StructNoDefaults", "_generated_test_Ice_defaultValue_Test_StructNoDefaults_t"]
