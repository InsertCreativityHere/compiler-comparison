# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.MyEnum import _Test_MyEnum_t

from Test.MyStruct import _Test_MyStruct_t

_Test_MyStructMyEnumD_t = IcePy.defineDictionary("::Test::MyStructMyEnumD", (), _Test_MyStruct_t, _Test_MyEnum_t)

__all__ = ["_Test_MyStructMyEnumD_t"]
