# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.slicing.objects.server_private.Test.MyClass_forward import _generated_test_Ice_slicing_objects_server_private_Test_MyClass_t

@dataclass(eq=False)
class MyClass(Value):
    i: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::MyClass"

_generated_test_Ice_slicing_objects_server_private_Test_MyClass_t = IcePy.defineValue(
    "::Test::MyClass",
    MyClass,
    -1,
    (),
    False,
    None,
    (("i", (), IcePy._t_int, False, 0),))

setattr(MyClass, '_ice_type', _generated_test_Ice_slicing_objects_server_private_Test_MyClass_t)

__all__ = ["MyClass", "_generated_test_Ice_slicing_objects_server_private_Test_MyClass_t"]
