# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.scope.Test.MyOtherClass_forward import _generated_test_Ice_scope_Test_MyOtherClass_t

@dataclass(eq=False)
class MyOtherClass(Value):
    s: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyOtherClass"

_generated_test_Ice_scope_Test_MyOtherClass_t = IcePy.defineValue(
    "::Test::MyOtherClass",
    MyOtherClass,
    -1,
    (),
    False,
    None,
    (("s", (), IcePy._t_string, False, 0),))

setattr(MyOtherClass, '_ice_type', _generated_test_Ice_scope_Test_MyOtherClass_t)

__all__ = ["MyOtherClass", "_generated_test_Ice_scope_Test_MyOtherClass_t"]
