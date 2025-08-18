# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.objects.Test.A1_forward import _generated_test_Ice_objects_Test_A1_t

from generated.test.Ice.objects.Test.B1_forward import _generated_test_Ice_objects_Test_B1_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.objects.Test.A1 import A1

@dataclass(eq=False)
class B1(Value):
    a1: A1 | None = None
    a2: A1 | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::B1"

_generated_test_Ice_objects_Test_B1_t = IcePy.defineValue(
    "::Test::B1",
    B1,
    -1,
    (),
    False,
    None,
    (
        ("a1", (), _generated_test_Ice_objects_Test_A1_t, False, 0),
        ("a2", (), _generated_test_Ice_objects_Test_A1_t, False, 0)
    ))

setattr(B1, '_ice_type', _generated_test_Ice_objects_Test_B1_t)

__all__ = ["B1", "_generated_test_Ice_objects_Test_B1_t"]
