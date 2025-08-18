# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.ByteList import _Test_ByteList_t

_Test_ByteListSeq_t = IcePy.defineSequence("::Test::ByteListSeq", (), _Test_ByteList_t)

__all__ = ["_Test_ByteListSeq_t"]
