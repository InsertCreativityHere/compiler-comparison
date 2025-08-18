# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.DPrxSeq import _Test_DPrxSeq_t

_Test_DPrxSeqList_t = IcePy.defineSequence("::Test::DPrxSeqList", (), _Test_DPrxSeq_t)

__all__ = ["_Test_DPrxSeqList_t"]
