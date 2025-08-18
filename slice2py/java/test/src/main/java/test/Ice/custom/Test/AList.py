# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.A import _Test_A_t

_Test_AList_t = IcePy.defineSequence("::Test::AList", (), _Test_A_t)

__all__ = ["_Test_AList_t"]
