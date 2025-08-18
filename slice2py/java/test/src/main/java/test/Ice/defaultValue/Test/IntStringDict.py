# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

_Test_IntStringDict_t = IcePy.defineDictionary("::Test::IntStringDict", (), IcePy._t_int, IcePy._t_string)

__all__ = ["_Test_IntStringDict_t"]
