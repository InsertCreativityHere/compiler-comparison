# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Base_forward import _Test_Base_t

_Test_BaseS_t = IcePy.defineSequence("::Test::BaseS", (), _Test_Base_t)

__all__ = ["_Test_BaseS_t"]
