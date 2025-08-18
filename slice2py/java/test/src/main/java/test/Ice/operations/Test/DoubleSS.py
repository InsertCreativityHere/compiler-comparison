# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.DoubleS import _Test_DoubleS_t

_Test_DoubleSS_t = IcePy.defineSequence("::Test::DoubleSS", (), _Test_DoubleS_t)

__all__ = ["_Test_DoubleSS_t"]
