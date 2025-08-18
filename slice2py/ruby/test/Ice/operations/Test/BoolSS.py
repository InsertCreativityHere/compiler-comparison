# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.BoolS import _Test_BoolS_t

_Test_BoolSS_t = IcePy.defineSequence("::Test::BoolSS", (), _Test_BoolS_t)

__all__ = ["_Test_BoolSS_t"]
