# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.StringStringD import _Test_StringStringD_t

_Test_StringStringDS_t = IcePy.defineSequence("::Test::StringStringDS", (), _Test_StringStringD_t)

__all__ = ["_Test_StringStringDS_t"]
