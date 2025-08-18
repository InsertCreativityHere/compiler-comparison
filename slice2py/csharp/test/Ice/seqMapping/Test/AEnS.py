# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.En import _Test_En_t

_Test_AEnS_t = IcePy.defineSequence("::Test::AEnS", (), _Test_En_t)

__all__ = ["_Test_AEnS_t"]
