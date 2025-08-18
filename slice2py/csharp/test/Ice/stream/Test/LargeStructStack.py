# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.LargeStruct import _Test_LargeStruct_t

_Test_LargeStructStack_t = IcePy.defineSequence("::Test::LargeStructStack", (), _Test_LargeStruct_t)

__all__ = ["_Test_LargeStructStack_t"]
