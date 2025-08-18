# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.FixedSeq import _Test_FixedSeq_t

_Test_FixedSeqList_t = IcePy.defineSequence("::Test::FixedSeqList", (), _Test_FixedSeq_t)

__all__ = ["_Test_FixedSeqList_t"]
