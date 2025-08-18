# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.GSS import _Test_GSS_t

_Test_NDGSS_t = IcePy.defineDictionary("::Test::NDGSS", (), IcePy._t_string, _Test_GSS_t)

__all__ = ["_Test_NDGSS_t"]
