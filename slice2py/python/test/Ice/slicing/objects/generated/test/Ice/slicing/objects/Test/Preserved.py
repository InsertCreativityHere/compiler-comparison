# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.slicing.objects.Test.PBase import PBase

from generated.test.Ice.slicing.objects.Test.PBase_forward import _generated_test_Ice_slicing_objects_Test_PBase_t

from generated.test.Ice.slicing.objects.Test.Preserved_forward import _generated_test_Ice_slicing_objects_Test_Preserved_t

@dataclass(eq=False)
class Preserved(PBase):
    ps: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Preserved"

_generated_test_Ice_slicing_objects_Test_Preserved_t = IcePy.defineValue(
    "::Test::Preserved",
    Preserved,
    -1,
    (),
    False,
    _generated_test_Ice_slicing_objects_Test_PBase_t,
    (("ps", (), IcePy._t_string, False, 0),))

setattr(Preserved, '_ice_type', _generated_test_Ice_slicing_objects_Test_Preserved_t)

__all__ = ["Preserved", "_generated_test_Ice_slicing_objects_Test_Preserved_t"]
