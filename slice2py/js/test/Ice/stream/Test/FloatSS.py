# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.FloatSeq import _Ice_FloatSeq_t

_Test_FloatSS_t = IcePy.defineSequence("::Test::FloatSS", (), _Ice_FloatSeq_t)

__all__ = ["_Test_FloatSS_t"]
