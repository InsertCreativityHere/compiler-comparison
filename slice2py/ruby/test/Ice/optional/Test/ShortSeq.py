# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

_Test_ShortSeq_t = IcePy.defineSequence("::Test::ShortSeq", (), IcePy._t_short)

__all__ = ["_Test_ShortSeq_t"]
