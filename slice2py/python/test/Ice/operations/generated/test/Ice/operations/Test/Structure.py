# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass
from dataclasses import field

from generated.test.Ice.operations.Test.AnotherStruct import AnotherStruct
from generated.test.Ice.operations.Test.AnotherStruct import _generated_test_Ice_operations_Test_AnotherStruct_t

from generated.test.Ice.operations.Test.MyClass_forward import _generated_test_Ice_operations_Test_MyClassPrx_t

from generated.test.Ice.operations.Test.MyEnum import MyEnum
from generated.test.Ice.operations.Test.MyEnum import _generated_test_Ice_operations_Test_MyEnum_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.operations.Test.MyClass import MyClassPrx


@dataclass
class Structure:
    p: MyClassPrx | None = None
    e: MyEnum = MyEnum.enum1
    s: AnotherStruct = field(default_factory=AnotherStruct)

_generated_test_Ice_operations_Test_Structure_t = IcePy.defineStruct(
    "::Test::Structure",
    Structure,
    (),
    (
        ("p", (), _generated_test_Ice_operations_Test_MyClassPrx_t),
        ("e", (), _generated_test_Ice_operations_Test_MyEnum_t),
        ("s", (), _generated_test_Ice_operations_Test_AnotherStruct_t)
    ))

__all__ = ["Structure", "_generated_test_Ice_operations_Test_Structure_t"]
