# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from LocalTest.C1Seq import _LocalTest_C1Seq_t

_LocalTest_C1SeqSeq_t = IcePy.defineSequence("::LocalTest::C1SeqSeq", (), _LocalTest_C1Seq_t)

__all__ = ["_LocalTest_C1SeqSeq_t"]
