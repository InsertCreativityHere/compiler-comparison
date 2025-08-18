# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.MyEnum import _Test_MyEnum_t

_Test_IntEnumDict_t = IcePy.defineDictionary("::Test::IntEnumDict", (), IcePy._t_int, _Test_MyEnum_t)

__all__ = ["_Test_IntEnumDict_t"]
