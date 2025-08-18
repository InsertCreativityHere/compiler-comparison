# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.AIS import _Test_AIS_t

_Test_NDAIS_t = IcePy.defineDictionary("::Test::NDAIS", (), IcePy._t_string, _Test_AIS_t)

__all__ = ["_Test_NDAIS_t"]
