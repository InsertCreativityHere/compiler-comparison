# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.ByteEnum import _Test_ByteEnum_t

_Test_ByteEnumSeq_t = IcePy.defineSequence("::Test::ByteEnumSeq", (), _Test_ByteEnum_t)

__all__ = ["_Test_ByteEnumSeq_t"]
