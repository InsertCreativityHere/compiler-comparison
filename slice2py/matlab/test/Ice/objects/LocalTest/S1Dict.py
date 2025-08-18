# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from LocalTest.S1 import _LocalTest_S1_t

_LocalTest_S1Dict_t = IcePy.defineDictionary("::LocalTest::S1Dict", (), IcePy._t_int, _LocalTest_S1_t)

__all__ = ["_LocalTest_S1Dict_t"]
