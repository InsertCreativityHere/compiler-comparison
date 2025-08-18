# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.slicing.objects.Test.B import B

from generated.test.Ice.slicing.objects.Test.B_forward import _generated_test_Ice_slicing_objects_Test_B_t

from generated.test.Ice.slicing.objects.client_private.Test.D3_forward import _generated_test_Ice_slicing_objects_client_private_Test_D3_t

from typing import TYPE_CHECKING

@dataclass(eq=False)
class D3(B):
    sd3: str = ""
    pd3: B | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::D3"

_generated_test_Ice_slicing_objects_client_private_Test_D3_t = IcePy.defineValue(
    "::Test::D3",
    D3,
    -1,
    (),
    False,
    _generated_test_Ice_slicing_objects_Test_B_t,
    (
        ("sd3", (), IcePy._t_string, False, 0),
        ("pd3", (), _generated_test_Ice_slicing_objects_Test_B_t, False, 0)
    ))

setattr(D3, '_ice_type', _generated_test_Ice_slicing_objects_client_private_Test_D3_t)

__all__ = ["D3", "_generated_test_Ice_slicing_objects_client_private_Test_D3_t"]
