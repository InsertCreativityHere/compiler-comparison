# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from LocalTest.CB1_forward import _LocalTest_CB1_t

from LocalTest.S1 import S1
from LocalTest.S1 import _LocalTest_S1_t

from dataclasses import dataclass
from dataclasses import field

@dataclass(eq=False)
class CB1(Value):
    s1: S1 = field(default_factory=S1)

    @staticmethod
    def ice_staticId() -> str:
        return "::LocalTest::CB1"

_LocalTest_CB1_t = IcePy.defineValue(
    "::LocalTest::CB1",
    CB1,
    -1,
    (),
    False,
    None,
    (("s1", (), _LocalTest_S1_t, False, 0),))

setattr(CB1, '_ice_type', _LocalTest_CB1_t)

__all__ = ["CB1", "_LocalTest_CB1_t"]
