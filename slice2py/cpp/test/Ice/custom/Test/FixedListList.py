# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.FixedList import _Test_FixedList_t

_Test_FixedListList_t = IcePy.defineSequence("::Test::FixedListList", (), _Test_FixedList_t)

__all__ = ["_Test_FixedListList_t"]
