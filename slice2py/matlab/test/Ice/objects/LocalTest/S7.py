# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from LocalTest.C1SeqSeq import _LocalTest_C1SeqSeq_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from LocalTest.C1 import C1


@dataclass
class S7:
    c1seqseq: list[list[C1 | None]] = field(default_factory=list)

_LocalTest_S7_t = IcePy.defineStruct(
    "::LocalTest::S7",
    S7,
    (),
    (("c1seqseq", (), _LocalTest_C1SeqSeq_t),))

__all__ = ["S7", "_LocalTest_S7_t"]
