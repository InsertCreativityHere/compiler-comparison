# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.L_forward import _Test_L_t

from Test.StructKey import _Test_StructKey_t

_Test_LMap_t = IcePy.defineDictionary("::Test::LMap", (), _Test_StructKey_t, _Test_L_t)

__all__ = ["_Test_LMap_t"]
