# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.ShortEnum import _Test_ShortEnum_t

_Test_ShortEnumSeq_t = IcePy.defineSequence("::Test::ShortEnumSeq", (), _Test_ShortEnum_t)

__all__ = ["_Test_ShortEnumSeq_t"]
