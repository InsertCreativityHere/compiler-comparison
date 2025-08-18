# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Inner.MyInterface_forward import _Test_Inner_MyInterfacePrx_t

_Test_Inner_MyInterfaceMap_t = IcePy.defineDictionary("::Test::Inner::MyInterfaceMap", (), IcePy._t_string, _Test_Inner_MyInterfacePrx_t)

__all__ = ["_Test_Inner_MyInterfaceMap_t"]
