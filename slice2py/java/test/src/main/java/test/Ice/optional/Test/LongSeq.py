# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

_Test_LongSeq_t = IcePy.defineSequence("::Test::LongSeq", (), IcePy._t_long)

__all__ = ["_Test_LongSeq_t"]
