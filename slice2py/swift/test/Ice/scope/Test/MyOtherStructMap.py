# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.MyOtherStruct import _Test_MyOtherStruct_t

_Test_MyOtherStructMap_t = IcePy.defineDictionary("::Test::MyOtherStructMap", (), IcePy._t_string, _Test_MyOtherStruct_t)

__all__ = ["_Test_MyOtherStructMap_t"]
