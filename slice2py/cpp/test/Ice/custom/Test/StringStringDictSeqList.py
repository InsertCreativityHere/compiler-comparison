# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.StringStringDictSeq import _Test_StringStringDictSeq_t

_Test_StringStringDictSeqList_t = IcePy.defineSequence("::Test::StringStringDictSeqList", (), _Test_StringStringDictSeq_t)

__all__ = ["_Test_StringStringDictSeqList_t"]
