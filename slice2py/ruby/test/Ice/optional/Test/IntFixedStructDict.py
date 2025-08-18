# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.FixedStruct import _Test_FixedStruct_t

_Test_IntFixedStructDict_t = IcePy.defineDictionary("::Test::IntFixedStructDict", (), IcePy._t_int, _Test_FixedStruct_t)

__all__ = ["_Test_IntFixedStructDict_t"]
