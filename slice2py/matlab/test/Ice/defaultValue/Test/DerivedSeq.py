# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Derived_forward import _Test_Derived_t

_Test_DerivedSeq_t = IcePy.defineSequence("::Test::DerivedSeq", (), _Test_Derived_t)

__all__ = ["_Test_DerivedSeq_t"]
