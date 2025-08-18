# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.MyInterface_forward import _Test_MyInterfacePrx_t

_Test_MyInterfaceProxyStack_t = IcePy.defineSequence("::Test::MyInterfaceProxyStack", (), _Test_MyInterfacePrx_t)

__all__ = ["_Test_MyInterfaceProxyStack_t"]
