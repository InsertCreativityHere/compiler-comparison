# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.IntS import _Test_IntS_t

_Test_IntSS_t = IcePy.defineSequence("::Test::IntSS", (), _Test_IntS_t)

__all__ = ["_Test_IntSS_t"]
