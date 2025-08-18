# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.SLS import _Test_SLS_t

_Test_SLSD_t = IcePy.defineDictionary("::Test::SLSD", (), IcePy._t_int, _Test_SLS_t)

__all__ = ["_Test_SLSD_t"]
