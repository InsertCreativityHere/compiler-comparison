# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass
from dataclasses import field

from generated.test.Ice.scope.Test.C2_forward import _generated_test_Ice_scope_Test_C2_t

from generated.test.Ice.scope.Test.MyEnum import MyEnum
from generated.test.Ice.scope.Test.MyEnum import _generated_test_Ice_scope_Test_MyEnum_t

from generated.test.Ice.scope.Test.MyOtherClass_forward import _generated_test_Ice_scope_Test_MyOtherClass_t

from generated.test.Ice.scope.Test.MyOtherStruct import MyOtherStruct
from generated.test.Ice.scope.Test.MyOtherStruct import _generated_test_Ice_scope_Test_MyOtherStruct_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.scope.Test.MyOtherClass import MyOtherClass

@dataclass(eq=False)
class C2(Value):
    e1: MyEnum = MyEnum.v1
    s1: MyOtherStruct = field(default_factory=MyOtherStruct)
    c1: MyOtherClass | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::C2"

_generated_test_Ice_scope_Test_C2_t = IcePy.defineValue(
    "::Test::C2",
    C2,
    -1,
    (),
    False,
    None,
    (
        ("e1", (), _generated_test_Ice_scope_Test_MyEnum_t, False, 0),
        ("s1", (), _generated_test_Ice_scope_Test_MyOtherStruct_t, False, 0),
        ("c1", (), _generated_test_Ice_scope_Test_MyOtherClass_t, False, 0)
    ))

setattr(C2, '_ice_type', _generated_test_Ice_scope_Test_C2_t)

__all__ = ["C2", "_generated_test_Ice_scope_Test_C2_t"]
