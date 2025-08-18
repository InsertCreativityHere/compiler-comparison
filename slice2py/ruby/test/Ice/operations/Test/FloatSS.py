# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.FloatS import _Test_FloatS_t

_Test_FloatSS_t = IcePy.defineSequence("::Test::FloatSS", (), _Test_FloatS_t)

__all__ = ["_Test_FloatSS_t"]
