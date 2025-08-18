# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.SimpleEnum import _Test_SimpleEnum_t

_Test_SimpleEnumSeq_t = IcePy.defineSequence("::Test::SimpleEnumSeq", (), _Test_SimpleEnum_t)

__all__ = ["_Test_SimpleEnumSeq_t"]
