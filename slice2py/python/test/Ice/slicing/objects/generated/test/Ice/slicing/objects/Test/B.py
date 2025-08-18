# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.slicing.objects.Test.B_forward import _generated_test_Ice_slicing_objects_Test_B_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.slicing.objects.Test.B import B

@dataclass(eq=False)
class B(Value):
    sb: str = ""
    pb: B | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::B"

_generated_test_Ice_slicing_objects_Test_B_t = IcePy.defineValue(
    "::Test::B",
    B,
    -1,
    (),
    False,
    None,
    (
        ("sb", (), IcePy._t_string, False, 0),
        ("pb", (), _generated_test_Ice_slicing_objects_Test_B_t, False, 0)
    ))

setattr(B, '_ice_type', _generated_test_Ice_slicing_objects_Test_B_t)

__all__ = ["B", "_generated_test_Ice_slicing_objects_Test_B_t"]
