# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.StringList import _Test_StringList_t

_Test_StringListList_t = IcePy.defineSequence("::Test::StringListList", (), _Test_StringList_t)

__all__ = ["_Test_StringListList_t"]
