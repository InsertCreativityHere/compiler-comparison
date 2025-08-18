# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.CList import _Test_CList_t

_Test_CListList_t = IcePy.defineSequence("::Test::CListList", (), _Test_CList_t)

__all__ = ["_Test_CListList_t"]
