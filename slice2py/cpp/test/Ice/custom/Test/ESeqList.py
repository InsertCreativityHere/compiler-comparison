# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.ESeq import _Test_ESeq_t

_Test_ESeqList_t = IcePy.defineSequence("::Test::ESeqList", (), _Test_ESeq_t)

__all__ = ["_Test_ESeqList_t"]
