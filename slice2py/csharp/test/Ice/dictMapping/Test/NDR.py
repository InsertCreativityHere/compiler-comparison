# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.NR import _Test_NR_t

_Test_NDR_t = IcePy.defineDictionary("::Test::NDR", (), IcePy._t_string, _Test_NR_t)

__all__ = ["_Test_NDR_t"]
