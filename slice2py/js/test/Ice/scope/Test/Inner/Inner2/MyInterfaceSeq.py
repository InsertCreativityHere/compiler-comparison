# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.Inner.Inner2.MyInterface_forward import _Test_Inner_Inner2_MyInterfacePrx_t

_Test_Inner_Inner2_MyInterfaceSeq_t = IcePy.defineSequence("::Test::Inner::Inner2::MyInterfaceSeq", (), _Test_Inner_Inner2_MyInterfacePrx_t)

__all__ = ["_Test_Inner_Inner2_MyInterfaceSeq_t"]
