# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.ShortS import _Test_ShortS_t

_Test_ShortSS_t = IcePy.defineSequence("::Test::ShortSS", (), _Test_ShortS_t)

__all__ = ["_Test_ShortSS_t"]
