# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from LocalTest.C1Seq import _LocalTest_C1Seq_t

from LocalTest.CB8_forward import _LocalTest_CB8_t

from LocalTest.S1 import S1
from LocalTest.S1 import _LocalTest_S1_t

from LocalTest.S1Dict import _LocalTest_S1Dict_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from LocalTest.C1 import C1

@dataclass(eq=False)
class CB8(Value):
    s1: S1 = field(default_factory=S1)
    c1seq: list[C1 | None] = field(default_factory=list)
    s1dict: dict[int, S1] = field(default_factory=dict)

    @staticmethod
    def ice_staticId() -> str:
        return "::LocalTest::CB8"

_LocalTest_CB8_t = IcePy.defineValue(
    "::LocalTest::CB8",
    CB8,
    -1,
    (),
    False,
    None,
    (
        ("s1", (), _LocalTest_S1_t, False, 0),
        ("c1seq", (), _LocalTest_C1Seq_t, False, 0),
        ("s1dict", (), _LocalTest_S1Dict_t, False, 0)
    ))

setattr(CB8, '_ice_type', _LocalTest_CB8_t)

__all__ = ["CB8", "_LocalTest_CB8_t"]
