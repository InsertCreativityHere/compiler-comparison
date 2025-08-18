# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass
from dataclasses import field

from generated.test.Ice.slicing.objects.Test.PBaseSeq import _generated_test_Ice_slicing_objects_Test_PBaseSeq_t

from generated.test.Ice.slicing.objects.Test.PDerived import PDerived

from generated.test.Ice.slicing.objects.Test.PDerived_forward import _generated_test_Ice_slicing_objects_Test_PDerived_t

from generated.test.Ice.slicing.objects.client_private.Test.PCDerived_forward import _generated_test_Ice_slicing_objects_client_private_Test_PCDerived_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.slicing.objects.Test.PBase import PBase

@dataclass(eq=False)
class PCDerived(PDerived):
    pbs: list[PBase | None] = field(default_factory=list)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::PCDerived"

_generated_test_Ice_slicing_objects_client_private_Test_PCDerived_t = IcePy.defineValue(
    "::Test::PCDerived",
    PCDerived,
    -1,
    (),
    False,
    _generated_test_Ice_slicing_objects_Test_PDerived_t,
    (("pbs", (), _generated_test_Ice_slicing_objects_Test_PBaseSeq_t, False, 0),))

setattr(PCDerived, '_ice_type', _generated_test_Ice_slicing_objects_client_private_Test_PCDerived_t)

__all__ = ["PCDerived", "_generated_test_Ice_slicing_objects_client_private_Test_PCDerived_t"]
