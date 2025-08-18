# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from LocalTest.CB7_forward import _LocalTest_CB7_t

from LocalTest.S1SeqSeq import _LocalTest_S1SeqSeq_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from LocalTest.S1 import S1

@dataclass(eq=False)
class CB7(Value):
    s1seqseq: list[list[S1]] = field(default_factory=list)

    @staticmethod
    def ice_staticId() -> str:
        return "::LocalTest::CB7"

_LocalTest_CB7_t = IcePy.defineValue(
    "::LocalTest::CB7",
    CB7,
    -1,
    (),
    False,
    None,
    (("s1seqseq", (), _LocalTest_S1SeqSeq_t, False, 0),))

setattr(CB7, '_ice_type', _LocalTest_CB7_t)

__all__ = ["CB7", "_LocalTest_CB7_t"]
