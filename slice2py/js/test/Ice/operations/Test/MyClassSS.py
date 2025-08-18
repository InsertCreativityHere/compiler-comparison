# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.MyClassS import _Test_MyClassS_t

_Test_MyClassSS_t = IcePy.defineSequence("::Test::MyClassSS", (), _Test_MyClassS_t)

__all__ = ["_Test_MyClassSS_t"]
