# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.StringStringDict import _Test_StringStringDict_t

_Test_StringStringDictSeq_t = IcePy.defineSequence("::Test::StringStringDictSeq", (), _Test_StringStringDict_t)

__all__ = ["_Test_StringStringDictSeq_t"]
