# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from LocalTest.C1_forward import _LocalTest_C1_t

_LocalTest_C1Dict_t = IcePy.defineDictionary("::LocalTest::C1Dict", (), IcePy._t_int, _LocalTest_C1_t)

__all__ = ["_LocalTest_C1Dict_t"]
