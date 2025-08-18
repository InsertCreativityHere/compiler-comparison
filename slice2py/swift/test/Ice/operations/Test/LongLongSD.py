# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.LongS import _Test_LongS_t

_Test_LongLongSD_t = IcePy.defineDictionary("::Test::LongLongSD", (), IcePy._t_long, _Test_LongS_t)

__all__ = ["_Test_LongLongSD_t"]
