# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.CR_forward import _Test_CR_t

_Test_ACRS_t = IcePy.defineSequence("::Test::ACRS", (), _Test_CR_t)

__all__ = ["_Test_ACRS_t"]
