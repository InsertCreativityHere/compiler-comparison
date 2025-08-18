# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.MyStruct import _Test_MyStruct_t

_Test_MyStructMap_t = IcePy.defineDictionary("::Test::MyStructMap", (), IcePy._t_string, _Test_MyStruct_t)

__all__ = ["_Test_MyStructMap_t"]
