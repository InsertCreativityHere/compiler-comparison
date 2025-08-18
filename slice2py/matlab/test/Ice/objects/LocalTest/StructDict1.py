# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from LocalTest.C1_forward import _LocalTest_C1_t

from LocalTest.StructKey import _LocalTest_StructKey_t

_LocalTest_StructDict1_t = IcePy.defineDictionary("::LocalTest::StructDict1", (), _LocalTest_StructKey_t, _LocalTest_C1_t)

__all__ = ["_LocalTest_StructDict1_t"]
