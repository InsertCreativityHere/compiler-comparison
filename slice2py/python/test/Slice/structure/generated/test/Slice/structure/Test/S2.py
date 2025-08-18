# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass
from dataclasses import field

from generated.test.Slice.structure.Test.IntSeq import _generated_test_Slice_structure_Test_IntSeq_t

from generated.test.Slice.structure.Test.S1 import S1
from generated.test.Slice.structure.Test.S1 import _generated_test_Slice_structure_Test_S1_t


@dataclass
class S2:
    bo: bool = False
    by: int = 0
    sh: int = 0
    i: int = 0
    l: int = 0
    str: str = ""
    seq: list[int] = field(default_factory=list)
    s: S1 = field(default_factory=S1)

_generated_test_Slice_structure_Test_S2_t = IcePy.defineStruct(
    "::Test::S2",
    S2,
    (),
    (
        ("bo", (), IcePy._t_bool),
        ("by", (), IcePy._t_byte),
        ("sh", (), IcePy._t_short),
        ("i", (), IcePy._t_int),
        ("l", (), IcePy._t_long),
        ("str", (), IcePy._t_string),
        ("seq", (), _generated_test_Slice_structure_Test_IntSeq_t),
        ("s", (), _generated_test_Slice_structure_Test_S1_t)
    ))

__all__ = ["S2", "_generated_test_Slice_structure_Test_S2_t"]
