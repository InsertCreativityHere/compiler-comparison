# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.StringSS import _Test_StringSS_t

_Test_StringSSS_t = IcePy.defineSequence("::Test::StringSSS", (), _Test_StringSS_t)

__all__ = ["_Test_StringSSS_t"]
