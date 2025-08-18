# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.SerialLarge import _Test_SerialLarge_t

_Test_SLD_t = IcePy.defineDictionary("::Test::SLD", (), IcePy._t_int, _Test_SerialLarge_t)

__all__ = ["_Test_SLD_t"]
