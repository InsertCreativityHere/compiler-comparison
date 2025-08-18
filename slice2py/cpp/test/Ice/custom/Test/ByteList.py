# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

_Test_ByteList_t = IcePy.defineSequence("::Test::ByteList", (), IcePy._t_byte)

__all__ = ["_Test_ByteList_t"]
