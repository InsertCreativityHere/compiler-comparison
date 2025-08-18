# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.E import _Test_E_t

_Test_ESeq_t = IcePy.defineSequence("::Test::ESeq", (), _Test_E_t)

__all__ = ["_Test_ESeq_t"]
