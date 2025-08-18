# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.MyStructMyEnumD import _Test_MyStructMyEnumD_t

_Test_MyStructMyEnumDS_t = IcePy.defineSequence("::Test::MyStructMyEnumDS", (), _Test_MyStructMyEnumD_t)

__all__ = ["_Test_MyStructMyEnumDS_t"]
