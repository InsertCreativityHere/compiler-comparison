# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.CustomCVS import _Test_CustomCVS_t

_Test_CustomCVSS_t = IcePy.defineSequence("::Test::CustomCVSS", (), _Test_CustomCVS_t)

__all__ = ["_Test_CustomCVSS_t"]
