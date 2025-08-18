# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.EList import _Test_EList_t

_Test_EListList_t = IcePy.defineSequence("::Test::EListList", (), _Test_EList_t)

__all__ = ["_Test_EListList_t"]
