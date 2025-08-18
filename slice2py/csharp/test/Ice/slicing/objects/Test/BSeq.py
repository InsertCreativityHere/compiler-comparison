# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.B_forward import _Test_B_t

_Test_BSeq_t = IcePy.defineSequence("::Test::BSeq", (), _Test_B_t)

__all__ = ["_Test_BSeq_t"]
