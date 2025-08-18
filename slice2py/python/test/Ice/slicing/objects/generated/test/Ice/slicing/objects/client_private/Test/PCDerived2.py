# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.slicing.objects.client_private.Test.PCDerived import PCDerived

from generated.test.Ice.slicing.objects.client_private.Test.PCDerived2_forward import _generated_test_Ice_slicing_objects_client_private_Test_PCDerived2_t

from generated.test.Ice.slicing.objects.client_private.Test.PCDerived_forward import _generated_test_Ice_slicing_objects_client_private_Test_PCDerived_t

@dataclass(eq=False)
class PCDerived2(PCDerived):
    pcd2: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::PCDerived2"

_generated_test_Ice_slicing_objects_client_private_Test_PCDerived2_t = IcePy.defineValue(
    "::Test::PCDerived2",
    PCDerived2,
    -1,
    (),
    False,
    _generated_test_Ice_slicing_objects_client_private_Test_PCDerived_t,
    (("pcd2", (), IcePy._t_int, False, 0),))

setattr(PCDerived2, '_ice_type', _generated_test_Ice_slicing_objects_client_private_Test_PCDerived2_t)

__all__ = ["PCDerived2", "_generated_test_Ice_slicing_objects_client_private_Test_PCDerived2_t"]
