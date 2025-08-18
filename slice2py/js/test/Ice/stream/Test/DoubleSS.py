# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.DoubleSeq import _Ice_DoubleSeq_t

_Test_DoubleSS_t = IcePy.defineSequence("::Test::DoubleSS", (), _Ice_DoubleSeq_t)

__all__ = ["_Test_DoubleSS_t"]
