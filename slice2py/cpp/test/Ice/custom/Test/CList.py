# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.C_forward import _Test_C_t

_Test_CList_t = IcePy.defineSequence("::Test::CList", (), _Test_C_t)

__all__ = ["_Test_CList_t"]
