# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.MyEnum import _Test_MyEnum_t

from Test.MyEnumS import _Test_MyEnumS_t

_Test_MyEnumMyEnumSD_t = IcePy.defineDictionary("::Test::MyEnumMyEnumSD", (), _Test_MyEnum_t, _Test_MyEnumS_t)

__all__ = ["_Test_MyEnumMyEnumSD_t"]
