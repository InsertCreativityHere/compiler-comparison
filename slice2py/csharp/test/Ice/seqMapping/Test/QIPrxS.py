# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.I_forward import _Test_IPrx_t

_Test_QIPrxS_t = IcePy.defineSequence("::Test::QIPrxS", (), _Test_IPrx_t)

__all__ = ["_Test_QIPrxS_t"]
