# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Color import _Test_Color_t

_Test_StringColorMap_t = IcePy.defineDictionary("::Test::StringColorMap", (), IcePy._t_int, _Test_Color_t)

__all__ = ["_Test_StringColorMap_t"]
