# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.DoubleS import _Test_DoubleS_t

_Test_StringDoubleSD_t = IcePy.defineDictionary("::Test::StringDoubleSD", (), IcePy._t_string, _Test_DoubleS_t)

__all__ = ["_Test_StringDoubleSD_t"]
