# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.BoolSeq import _Test_BoolSeq_t

_Test_BoolDequeList_t = IcePy.defineSequence("::Test::BoolDequeList", (), _Test_BoolSeq_t)

__all__ = ["_Test_BoolDequeList_t"]
