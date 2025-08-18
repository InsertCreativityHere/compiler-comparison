# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.CSeq import _Test_CSeq_t

_Test_CSeqList_t = IcePy.defineSequence("::Test::CSeqList", (), _Test_CSeq_t)

__all__ = ["_Test_CSeqList_t"]
