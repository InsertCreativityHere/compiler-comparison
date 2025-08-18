# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.ByteS import _Test_ByteS_t

_Test_ByteByteSD_t = IcePy.defineDictionary("::Test::ByteByteSD", (), IcePy._t_byte, _Test_ByteS_t)

__all__ = ["_Test_ByteByteSD_t"]
