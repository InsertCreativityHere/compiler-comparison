# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.D import _Test_D_t

_Test_DSeq_t = IcePy.defineSequence("::Test::DSeq", (), _Test_D_t)

__all__ = ["_Test_DSeq_t"]
