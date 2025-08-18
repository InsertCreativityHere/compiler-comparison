# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Variable import _Test_Variable_t

_Test_VariableList_t = IcePy.defineSequence("::Test::VariableList", (), _Test_Variable_t)

__all__ = ["_Test_VariableList_t"]
