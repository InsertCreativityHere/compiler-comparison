# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from LocalTest.S1Seq import _LocalTest_S1Seq_t

_LocalTest_S1SeqSeq_t = IcePy.defineSequence("::LocalTest::S1SeqSeq", (), _LocalTest_S1Seq_t)

__all__ = ["_LocalTest_S1SeqSeq_t"]
