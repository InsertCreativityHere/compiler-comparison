# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.D_forward import _Test_DPrx_t

_Test_DPrxSeq_t = IcePy.defineSequence("::Test::DPrxSeq", (), _Test_DPrx_t)

__all__ = ["_Test_DPrxSeq_t"]
