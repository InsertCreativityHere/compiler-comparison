# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.S import _Test_S_t

_Test_KStructS_t = IcePy.defineSequence("::Test::KStructS", (), _Test_S_t)

__all__ = ["_Test_KStructS_t"]
