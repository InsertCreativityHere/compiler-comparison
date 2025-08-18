# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.IntEnum import _Test_IntEnum_t

_Test_IntEnumSeq_t = IcePy.defineSequence("::Test::IntEnumSeq", (), _Test_IntEnum_t)

__all__ = ["_Test_IntEnumSeq_t"]
