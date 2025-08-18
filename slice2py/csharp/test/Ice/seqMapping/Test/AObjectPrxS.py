# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx_forward import _Ice_ObjectPrx_t

_Test_AObjectPrxS_t = IcePy.defineSequence("::Test::AObjectPrxS", (), _Ice_ObjectPrx_t)

__all__ = ["_Test_AObjectPrxS_t"]
