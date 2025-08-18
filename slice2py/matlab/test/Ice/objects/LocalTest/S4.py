# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from LocalTest.S1Seq import _LocalTest_S1Seq_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from LocalTest.S1 import S1


@dataclass
class S4:
    s1seq: list[S1] = field(default_factory=list)

_LocalTest_S4_t = IcePy.defineStruct(
    "::LocalTest::S4",
    S4,
    (),
    (("s1seq", (), _LocalTest_S1Seq_t),))

__all__ = ["S4", "_LocalTest_S4_t"]
