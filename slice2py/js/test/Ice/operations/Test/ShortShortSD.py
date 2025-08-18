# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.ShortS import _Test_ShortS_t

_Test_ShortShortSD_t = IcePy.defineDictionary("::Test::ShortShortSD", (), IcePy._t_short, _Test_ShortS_t)

__all__ = ["_Test_ShortShortSD_t"]
