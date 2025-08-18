# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.StringS import _Test_StringS_t

_Test_StringStringSD_t = IcePy.defineDictionary("::Test::StringStringSD", (), IcePy._t_string, _Test_StringS_t)

__all__ = ["_Test_StringStringSD_t"]
