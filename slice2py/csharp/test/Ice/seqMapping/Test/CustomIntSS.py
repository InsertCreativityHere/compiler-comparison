# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.CustomIntS import _Test_CustomIntS_t

_Test_CustomIntSS_t = IcePy.defineSequence("::Test::CustomIntSS", (), _Test_CustomIntS_t)

__all__ = ["_Test_CustomIntSS_t"]
