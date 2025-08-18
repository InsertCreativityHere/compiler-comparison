# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from LocalTest.S1 import _LocalTest_S1_t

_LocalTest_S1Seq_t = IcePy.defineSequence("::LocalTest::S1Seq", (), _LocalTest_S1_t)

__all__ = ["_LocalTest_S1Seq_t"]
