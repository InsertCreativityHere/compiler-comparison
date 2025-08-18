# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.VariableSeq import _Test_VariableSeq_t

_Test_VariableSeqList_t = IcePy.defineSequence("::Test::VariableSeqList", (), _Test_VariableSeq_t)

__all__ = ["_Test_VariableSeqList_t"]
