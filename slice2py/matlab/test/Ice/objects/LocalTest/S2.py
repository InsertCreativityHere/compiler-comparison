# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from LocalTest.S1 import S1
from LocalTest.S1 import _LocalTest_S1_t

from dataclasses import dataclass
from dataclasses import field


@dataclass
class S2:
    s1: S1 = field(default_factory=S1)

_LocalTest_S2_t = IcePy.defineStruct(
    "::LocalTest::S2",
    S2,
    (),
    (("s1", (), _LocalTest_S1_t),))

__all__ = ["S2", "_LocalTest_S2_t"]
