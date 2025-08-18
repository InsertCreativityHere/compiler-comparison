# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.COneMember_forward import _Test_COneMember_t

_Test_DOneMember_t = IcePy.defineDictionary("::Test::DOneMember", (), IcePy._t_int, _Test_COneMember_t)

__all__ = ["_Test_DOneMember_t"]
