# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

_Test_IntSeq_t = IcePy.defineSequence("::Test::IntSeq", (), IcePy._t_int)

__all__ = ["_Test_IntSeq_t"]
