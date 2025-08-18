# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from LocalTest.S1 import _LocalTest_S1_t

from LocalTest.StructKey import _LocalTest_StructKey_t

_LocalTest_StructDict2_t = IcePy.defineDictionary("::LocalTest::StructDict2", (), _LocalTest_StructKey_t, _LocalTest_S1_t)

__all__ = ["_LocalTest_StructDict2_t"]
