# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.CV_forward import _Test_CV_t

_Test_LCVS_t = IcePy.defineSequence("::Test::LCVS", (), _Test_CV_t)

__all__ = ["_Test_LCVS_t"]
