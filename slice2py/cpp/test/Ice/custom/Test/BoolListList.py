# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.BoolList import _Test_BoolList_t

_Test_BoolListList_t = IcePy.defineSequence("::Test::BoolListList", (), _Test_BoolList_t)

__all__ = ["_Test_BoolListList_t"]
