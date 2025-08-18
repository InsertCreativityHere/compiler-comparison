# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

_Test_ByteSeq_t = IcePy.defineSequence("::Test::ByteSeq", (), IcePy._t_byte)

__all__ = ["_Test_ByteSeq_t"]
