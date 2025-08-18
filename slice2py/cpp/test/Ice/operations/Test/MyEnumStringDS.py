# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.MyEnumStringD import _Test_MyEnumStringD_t

_Test_MyEnumStringDS_t = IcePy.defineSequence("::Test::MyEnumStringDS", (), _Test_MyEnumStringD_t)

__all__ = ["_Test_MyEnumStringDS_t"]
