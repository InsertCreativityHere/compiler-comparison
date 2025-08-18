# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.ASS import _Test_ASS_t

_Test_NDASS_t = IcePy.defineDictionary("::Test::NDASS", (), IcePy._t_string, _Test_ASS_t)

__all__ = ["_Test_NDASS_t"]
