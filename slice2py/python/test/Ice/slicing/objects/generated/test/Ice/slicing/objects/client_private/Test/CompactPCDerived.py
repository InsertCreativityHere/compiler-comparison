# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass
from dataclasses import field

from generated.test.Ice.slicing.objects.Test.CompactPDerived import CompactPDerived

from generated.test.Ice.slicing.objects.Test.CompactPDerived_forward import _generated_test_Ice_slicing_objects_Test_CompactPDerived_t

from generated.test.Ice.slicing.objects.Test.PBaseSeq import _generated_test_Ice_slicing_objects_Test_PBaseSeq_t

from generated.test.Ice.slicing.objects.client_private.Test.CompactPCDerived_forward import _generated_test_Ice_slicing_objects_client_private_Test_CompactPCDerived_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.slicing.objects.Test.PBase import PBase

@dataclass(eq=False)
class CompactPCDerived(CompactPDerived):
    pbs: list[PBase | None] = field(default_factory=list)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::CompactPCDerived"

_generated_test_Ice_slicing_objects_client_private_Test_CompactPCDerived_t = IcePy.defineValue(
    "::Test::CompactPCDerived",
    CompactPCDerived,
    57,
    (),
    False,
    _generated_test_Ice_slicing_objects_Test_CompactPDerived_t,
    (("pbs", (), _generated_test_Ice_slicing_objects_Test_PBaseSeq_t, False, 0),))

setattr(CompactPCDerived, '_ice_type', _generated_test_Ice_slicing_objects_client_private_Test_CompactPCDerived_t)

__all__ = ["CompactPCDerived", "_generated_test_Ice_slicing_objects_client_private_Test_CompactPCDerived_t"]
