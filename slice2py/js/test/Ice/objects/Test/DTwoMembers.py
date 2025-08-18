# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.CTwoMembers_forward import _Test_CTwoMembers_t

_Test_DTwoMembers_t = IcePy.defineDictionary("::Test::DTwoMembers", (), IcePy._t_int, _Test_CTwoMembers_t)

__all__ = ["_Test_DTwoMembers_t"]
