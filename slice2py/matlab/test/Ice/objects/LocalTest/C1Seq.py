# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from LocalTest.C1_forward import _LocalTest_C1_t

_LocalTest_C1Seq_t = IcePy.defineSequence("::LocalTest::C1Seq", (), _LocalTest_C1_t)

__all__ = ["_LocalTest_C1Seq_t"]
