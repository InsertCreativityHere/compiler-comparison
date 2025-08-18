# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Inner.Inner2.MyClass_forward import _Test_Inner_Inner2_MyClass_t

_Test_Inner_Inner2_MyClassMap_t = IcePy.defineDictionary("::Test::Inner::Inner2::MyClassMap", (), IcePy._t_string, _Test_Inner_Inner2_MyClass_t)

__all__ = ["_Test_Inner_Inner2_MyClassMap_t"]
