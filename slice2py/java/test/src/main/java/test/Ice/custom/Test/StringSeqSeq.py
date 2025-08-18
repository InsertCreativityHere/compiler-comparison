# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.StringSeq import _Test_StringSeq_t

_Test_StringSeqSeq_t = IcePy.defineSequence("::Test::StringSeqSeq", (), _Test_StringSeq_t)

__all__ = ["_Test_StringSeqSeq_t"]
