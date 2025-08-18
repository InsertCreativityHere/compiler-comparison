# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.En import _Test_En_t

_Test_SEnS_t = IcePy.defineSequence("::Test::SEnS", (), _Test_En_t)

__all__ = ["_Test_SEnS_t"]
