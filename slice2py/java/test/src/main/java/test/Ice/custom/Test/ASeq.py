# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.A import _Test_A_t

_Test_ASeq_t = IcePy.defineSequence("::Test::ASeq", (), _Test_A_t)

__all__ = ["_Test_ASeq_t"]
