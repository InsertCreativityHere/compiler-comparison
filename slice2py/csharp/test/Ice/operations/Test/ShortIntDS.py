# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.ShortIntD import _Test_ShortIntD_t

_Test_ShortIntDS_t = IcePy.defineSequence("::Test::ShortIntDS", (), _Test_ShortIntD_t)

__all__ = ["_Test_ShortIntDS_t"]
