# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from LocalTest.S1SeqSeq import _LocalTest_S1SeqSeq_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from LocalTest.S1 import S1


@dataclass
class S8:
    s1seqseq: list[list[S1]] = field(default_factory=list)

_LocalTest_S8_t = IcePy.defineStruct(
    "::LocalTest::S8",
    S8,
    (),
    (("s1seqseq", (), _LocalTest_S1SeqSeq_t),))

__all__ = ["S8", "_LocalTest_S8_t"]
