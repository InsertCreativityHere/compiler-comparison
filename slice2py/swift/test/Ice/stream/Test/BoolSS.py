# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.BoolSeq import _Ice_BoolSeq_t

_Test_BoolSS_t = IcePy.defineSequence("::Test::BoolSS", (), _Ice_BoolSeq_t)

__all__ = ["_Test_BoolSS_t"]
