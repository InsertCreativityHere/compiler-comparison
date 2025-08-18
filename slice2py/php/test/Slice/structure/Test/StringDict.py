# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

_Test_StringDict_t = IcePy.defineDictionary("::Test::StringDict", (), IcePy._t_string, IcePy._t_string)

__all__ = ["_Test_StringDict_t"]
