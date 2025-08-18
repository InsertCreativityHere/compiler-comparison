# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.VarStruct import _Test_VarStruct_t

_Test_IntVarStructDict_t = IcePy.defineDictionary("::Test::IntVarStructDict", (), IcePy._t_int, _Test_VarStruct_t)

__all__ = ["_Test_IntVarStructDict_t"]
