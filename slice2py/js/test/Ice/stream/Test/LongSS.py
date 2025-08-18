# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.LongSeq import _Ice_LongSeq_t

_Test_LongSS_t = IcePy.defineSequence("::Test::LongSS", (), _Ice_LongSeq_t)

__all__ = ["_Test_LongSS_t"]
