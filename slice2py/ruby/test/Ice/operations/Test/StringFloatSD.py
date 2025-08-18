# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.FloatS import _Test_FloatS_t

_Test_StringFloatSD_t = IcePy.defineDictionary("::Test::StringFloatSD", (), IcePy._t_string, _Test_FloatS_t)

__all__ = ["_Test_StringFloatSD_t"]
