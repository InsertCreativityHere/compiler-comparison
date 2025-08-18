# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.PBase_forward import _Test_PBase_t

_Test_PBaseSeq_t = IcePy.defineSequence("::Test::PBaseSeq", (), _Test_PBase_t)

__all__ = ["_Test_PBaseSeq_t"]
