# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.ByteBoolD import _Test_ByteBoolD_t

_Test_ByteBoolDS_t = IcePy.defineSequence("::Test::ByteBoolDS", (), _Test_ByteBoolD_t)

__all__ = ["_Test_ByteBoolDS_t"]
