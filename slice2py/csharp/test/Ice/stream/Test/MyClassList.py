# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.MyClass_forward import _Test_MyClass_t

_Test_MyClassList_t = IcePy.defineSequence("::Test::MyClassList", (), _Test_MyClass_t)

__all__ = ["_Test_MyClassList_t"]
