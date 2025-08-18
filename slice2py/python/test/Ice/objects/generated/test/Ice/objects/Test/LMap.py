# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from generated.test.Ice.objects.Test.L_forward import _generated_test_Ice_objects_Test_L_t

from generated.test.Ice.objects.Test.StructKey import _generated_test_Ice_objects_Test_StructKey_t

_generated_test_Ice_objects_Test_LMap_t = IcePy.defineDictionary("::Test::LMap", (), _generated_test_Ice_objects_Test_StructKey_t, _generated_test_Ice_objects_Test_L_t)

__all__ = ["_generated_test_Ice_objects_Test_LMap_t"]
