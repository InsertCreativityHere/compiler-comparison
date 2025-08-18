# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.IntSeq import _Test_IntSeq_t

_Test_IntSeqSeq_t = IcePy.defineSequence("::Test::IntSeqSeq", (), _Test_IntSeq_t)

__all__ = ["_Test_IntSeqSeq_t"]
