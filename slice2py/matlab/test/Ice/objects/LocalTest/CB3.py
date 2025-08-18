# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from LocalTest.CB3_forward import _LocalTest_CB3_t

from LocalTest.S1Seq import _LocalTest_S1Seq_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from LocalTest.S1 import S1

@dataclass(eq=False)
class CB3(Value):
    s1seq: list[S1] = field(default_factory=list)

    @staticmethod
    def ice_staticId() -> str:
        return "::LocalTest::CB3"

_LocalTest_CB3_t = IcePy.defineValue(
    "::LocalTest::CB3",
    CB3,
    -1,
    (),
    False,
    None,
    (("s1seq", (), _LocalTest_S1Seq_t, False, 0),))

setattr(CB3, '_ice_type', _LocalTest_CB3_t)

__all__ = ["CB3", "_LocalTest_CB3_t"]
