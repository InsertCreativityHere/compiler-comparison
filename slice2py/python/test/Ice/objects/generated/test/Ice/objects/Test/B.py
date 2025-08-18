# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.objects.Test.A import A

from generated.test.Ice.objects.Test.A_forward import _generated_test_Ice_objects_Test_A_t

from generated.test.Ice.objects.Test.B_forward import _generated_test_Ice_objects_Test_B_t

from typing import TYPE_CHECKING

@dataclass(eq=False)
class B(A):
    theA: A | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::B"

_generated_test_Ice_objects_Test_B_t = IcePy.defineValue(
    "::Test::B",
    B,
    -1,
    (),
    False,
    _generated_test_Ice_objects_Test_A_t,
    (("theA", (), _generated_test_Ice_objects_Test_A_t, False, 0),))

setattr(B, '_ice_type', _generated_test_Ice_objects_Test_B_t)

__all__ = ["B", "_generated_test_Ice_objects_Test_B_t"]
