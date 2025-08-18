# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.LongFloatD import _Test_LongFloatD_t

_Test_LongFloatDS_t = IcePy.defineSequence("::Test::LongFloatDS", (), _Test_LongFloatD_t)

__all__ = ["_Test_LongFloatDS_t"]
