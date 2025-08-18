# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.SmallStruct import _Test_SmallStruct_t

_Test_SmallStructSeq_t = IcePy.defineSequence("::Test::SmallStructSeq", (), _Test_SmallStruct_t)

__all__ = ["_Test_SmallStructSeq_t"]
