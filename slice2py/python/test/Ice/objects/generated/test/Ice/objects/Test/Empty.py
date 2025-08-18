# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.objects.Test.Empty_forward import _generated_test_Ice_objects_Test_Empty_t

@dataclass(eq=False)
class Empty(Value):

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Empty"

_generated_test_Ice_objects_Test_Empty_t = IcePy.defineValue(
    "::Test::Empty",
    Empty,
    -1,
    (),
    False,
    None,
    ())

setattr(Empty, '_ice_type', _generated_test_Ice_objects_Test_Empty_t)

__all__ = ["Empty", "_generated_test_Ice_objects_Test_Empty_t"]
