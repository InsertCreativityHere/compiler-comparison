# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx_forward import _Ice_ObjectPrx_t

_Test_CObjectPrxS_t = IcePy.defineSequence("::Test::CObjectPrxS", (), _Ice_ObjectPrx_t)

__all__ = ["_Test_CObjectPrxS_t"]
