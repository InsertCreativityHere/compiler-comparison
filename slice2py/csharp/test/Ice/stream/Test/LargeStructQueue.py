# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.LargeStruct import _Test_LargeStruct_t

_Test_LargeStructQueue_t = IcePy.defineSequence("::Test::LargeStructQueue", (), _Test_LargeStruct_t)

__all__ = ["_Test_LargeStructQueue_t"]
