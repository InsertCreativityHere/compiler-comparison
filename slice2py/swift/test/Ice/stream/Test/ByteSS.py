# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ByteSeq import _Ice_ByteSeq_t

_Test_ByteSS_t = IcePy.defineSequence("::Test::ByteSS", (), _Ice_ByteSeq_t)

__all__ = ["_Test_ByteSS_t"]
