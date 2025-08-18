# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from generated.test.Ice.operations.Test.MyEnum import _generated_test_Ice_operations_Test_MyEnum_t

from generated.test.Ice.operations.Test.MyStruct import _generated_test_Ice_operations_Test_MyStruct_t

_generated_test_Ice_operations_Test_MyStructMyEnumD_t = IcePy.defineDictionary("::Test::MyStructMyEnumD", (), _generated_test_Ice_operations_Test_MyStruct_t, _generated_test_Ice_operations_Test_MyEnum_t)

__all__ = ["_generated_test_Ice_operations_Test_MyStructMyEnumD_t"]
