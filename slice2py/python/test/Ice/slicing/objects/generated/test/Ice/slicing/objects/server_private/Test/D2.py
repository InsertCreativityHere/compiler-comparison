# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.slicing.objects.Test.B import B

from generated.test.Ice.slicing.objects.Test.B_forward import _generated_test_Ice_slicing_objects_Test_B_t

from generated.test.Ice.slicing.objects.server_private.Test.D2_forward import _generated_test_Ice_slicing_objects_server_private_Test_D2_t

from typing import TYPE_CHECKING

@dataclass(eq=False)
class D2(B):
    sd2: str = ""
    pd2: B | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::D2"

_generated_test_Ice_slicing_objects_server_private_Test_D2_t = IcePy.defineValue(
    "::Test::D2",
    D2,
    -1,
    (),
    False,
    _generated_test_Ice_slicing_objects_Test_B_t,
    (
        ("sd2", (), IcePy._t_string, False, 0),
        ("pd2", (), _generated_test_Ice_slicing_objects_Test_B_t, False, 0)
    ))

setattr(D2, '_ice_type', _generated_test_Ice_slicing_objects_server_private_Test_D2_t)

__all__ = ["D2", "_generated_test_Ice_slicing_objects_server_private_Test_D2_t"]
