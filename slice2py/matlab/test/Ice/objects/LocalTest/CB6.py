# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from LocalTest.C1SeqSeq import _LocalTest_C1SeqSeq_t

from LocalTest.CB6_forward import _LocalTest_CB6_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from LocalTest.C1 import C1

@dataclass(eq=False)
class CB6(Value):
    c1seqseq: list[list[C1 | None]] = field(default_factory=list)

    @staticmethod
    def ice_staticId() -> str:
        return "::LocalTest::CB6"

_LocalTest_CB6_t = IcePy.defineValue(
    "::LocalTest::CB6",
    CB6,
    -1,
    (),
    False,
    None,
    (("c1seqseq", (), _LocalTest_C1SeqSeq_t, False, 0),))

setattr(CB6, '_ice_type', _LocalTest_CB6_t)

__all__ = ["CB6", "_LocalTest_CB6_t"]
