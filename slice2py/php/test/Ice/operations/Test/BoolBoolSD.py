# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.BoolS import _Test_BoolS_t

_Test_BoolBoolSD_t = IcePy.defineDictionary("::Test::BoolBoolSD", (), IcePy._t_bool, _Test_BoolS_t)

__all__ = ["_Test_BoolBoolSD_t"]
