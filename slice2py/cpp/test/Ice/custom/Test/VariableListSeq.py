# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.VariableList import _Test_VariableList_t

_Test_VariableListSeq_t = IcePy.defineSequence("::Test::VariableListSeq", (), _Test_VariableList_t)

__all__ = ["_Test_VariableListSeq_t"]
