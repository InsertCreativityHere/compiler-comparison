# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.ByteList import _Test_ByteList_t

_Test_ByteListList_t = IcePy.defineSequence("::Test::ByteListList", (), _Test_ByteList_t)

__all__ = ["_Test_ByteListList_t"]
