# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from LocalTest.S1Dict import _LocalTest_S1Dict_t

_LocalTest_S1DictDict_t = IcePy.defineDictionary("::LocalTest::S1DictDict", (), IcePy._t_int, _LocalTest_S1Dict_t)

__all__ = ["_LocalTest_S1DictDict_t"]
