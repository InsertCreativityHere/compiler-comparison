# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.StringStringDictList import _Test_StringStringDictList_t

_Test_StringStringDictListList_t = IcePy.defineSequence("::Test::StringStringDictListList", (), _Test_StringStringDictList_t)

__all__ = ["_Test_StringStringDictListList_t"]
