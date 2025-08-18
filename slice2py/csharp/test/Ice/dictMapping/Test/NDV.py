# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.NV import _Test_NV_t

_Test_NDV_t = IcePy.defineDictionary("::Test::NDV", (), IcePy._t_string, _Test_NV_t)

__all__ = ["_Test_NDV_t"]
