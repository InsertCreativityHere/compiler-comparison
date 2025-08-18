# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.IntS import _Test_IntS_t

_Test_IntIntSD_t = IcePy.defineDictionary("::Test::IntIntSD", (), IcePy._t_int, _Test_IntS_t)

__all__ = ["_Test_IntIntSD_t"]
