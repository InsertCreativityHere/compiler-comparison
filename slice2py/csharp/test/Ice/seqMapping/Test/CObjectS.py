# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value_forward import _Ice_Value_t

_Test_CObjectS_t = IcePy.defineSequence("::Test::CObjectS", (), _Ice_Value_t)

__all__ = ["_Test_CObjectS_t"]
