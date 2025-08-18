# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.StringMyEnumD import _Test_StringMyEnumD_t

_Test_StringMyEnumDS_t = IcePy.defineSequence("::Test::StringMyEnumDS", (), _Test_StringMyEnumD_t)

__all__ = ["_Test_StringMyEnumDS_t"]
