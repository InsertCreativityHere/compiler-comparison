# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.DPrxList import _Test_DPrxList_t

_Test_DPrxListList_t = IcePy.defineSequence("::Test::DPrxListList", (), _Test_DPrxList_t)

__all__ = ["_Test_DPrxListList_t"]
