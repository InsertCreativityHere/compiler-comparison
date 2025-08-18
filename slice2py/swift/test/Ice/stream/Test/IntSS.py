# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.IntSeq import _Ice_IntSeq_t

_Test_IntSS_t = IcePy.defineSequence("::Test::IntSS", (), _Ice_IntSeq_t)

__all__ = ["_Test_IntSS_t"]
