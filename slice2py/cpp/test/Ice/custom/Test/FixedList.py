# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Fixed import _Test_Fixed_t

_Test_FixedList_t = IcePy.defineSequence("::Test::FixedList", (), _Test_Fixed_t)

__all__ = ["_Test_FixedList_t"]
