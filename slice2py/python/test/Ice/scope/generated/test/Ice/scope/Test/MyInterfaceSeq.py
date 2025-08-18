# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from generated.test.Ice.scope.Test.MyInterface_forward import _generated_test_Ice_scope_Test_MyInterfacePrx_t

_generated_test_Ice_scope_Test_MyInterfaceSeq_t = IcePy.defineSequence("::Test::MyInterfaceSeq", (), _generated_test_Ice_scope_Test_MyInterfacePrx_t)

__all__ = ["_generated_test_Ice_scope_Test_MyInterfaceSeq_t"]
