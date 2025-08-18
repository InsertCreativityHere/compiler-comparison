# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.MyEnum import _Test_MyEnum_t

_Test_StringMyEnumD_t = IcePy.defineDictionary("::Test::StringMyEnumD", (), IcePy._t_string, _Test_MyEnum_t)

__all__ = ["_Test_StringMyEnumD_t"]
