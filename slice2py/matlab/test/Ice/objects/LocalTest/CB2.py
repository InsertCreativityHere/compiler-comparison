# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from LocalTest.C1Seq import _LocalTest_C1Seq_t

from LocalTest.CB2_forward import _LocalTest_CB2_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from LocalTest.C1 import C1

@dataclass(eq=False)
class CB2(Value):
    c1seq: list[C1 | None] = field(default_factory=list)

    @staticmethod
    def ice_staticId() -> str:
        return "::LocalTest::CB2"

_LocalTest_CB2_t = IcePy.defineValue(
    "::LocalTest::CB2",
    CB2,
    -1,
    (),
    False,
    None,
    (("c1seq", (), _LocalTest_C1Seq_t, False, 0),))

setattr(CB2, '_ice_type', _LocalTest_CB2_t)

__all__ = ["CB2", "_LocalTest_CB2_t"]
