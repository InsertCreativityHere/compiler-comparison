# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.slicing.objects.Test.PBase import PBase

from generated.test.Ice.slicing.objects.Test.PBase_forward import _generated_test_Ice_slicing_objects_Test_PBase_t

from generated.test.Ice.slicing.objects.client_private.Test.PCUnknown_forward import _generated_test_Ice_slicing_objects_client_private_Test_PCUnknown_t

@dataclass(eq=False)
class PCUnknown(PBase):
    pu: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::PCUnknown"

_generated_test_Ice_slicing_objects_client_private_Test_PCUnknown_t = IcePy.defineValue(
    "::Test::PCUnknown",
    PCUnknown,
    -1,
    (),
    False,
    _generated_test_Ice_slicing_objects_Test_PBase_t,
    (("pu", (), IcePy._t_string, False, 0),))

setattr(PCUnknown, '_ice_type', _generated_test_Ice_slicing_objects_client_private_Test_PCUnknown_t)

__all__ = ["PCUnknown", "_generated_test_Ice_slicing_objects_client_private_Test_PCUnknown_t"]
