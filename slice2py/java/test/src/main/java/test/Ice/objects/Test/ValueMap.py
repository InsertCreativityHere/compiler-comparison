# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value_forward import _Ice_Value_t

_Test_ValueMap_t = IcePy.defineDictionary("::Test::ValueMap", (), IcePy._t_string, _Ice_Value_t)

__all__ = ["_Test_ValueMap_t"]
