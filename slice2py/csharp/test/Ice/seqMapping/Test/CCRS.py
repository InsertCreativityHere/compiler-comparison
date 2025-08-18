# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.CR_forward import _Test_CR_t

_Test_CCRS_t = IcePy.defineSequence("::Test::CCRS", (), _Test_CR_t)

__all__ = ["_Test_CCRS_t"]
