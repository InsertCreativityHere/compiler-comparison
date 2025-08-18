# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.slicing.objects.Test.PBase_forward import _generated_test_Ice_slicing_objects_Test_PBase_t

from generated.test.Ice.slicing.objects.Test.PDerived_forward import _generated_test_Ice_slicing_objects_Test_PDerived_t

from generated.test.Ice.slicing.objects.Test.Preserved import Preserved

from generated.test.Ice.slicing.objects.Test.Preserved_forward import _generated_test_Ice_slicing_objects_Test_Preserved_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.slicing.objects.Test.PBase import PBase

@dataclass(eq=False)
class PDerived(Preserved):
    pb: PBase | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::PDerived"

_generated_test_Ice_slicing_objects_Test_PDerived_t = IcePy.defineValue(
    "::Test::PDerived",
    PDerived,
    -1,
    (),
    False,
    _generated_test_Ice_slicing_objects_Test_Preserved_t,
    (("pb", (), _generated_test_Ice_slicing_objects_Test_PBase_t, False, 0),))

setattr(PDerived, '_ice_type', _generated_test_Ice_slicing_objects_Test_PDerived_t)

__all__ = ["PDerived", "_generated_test_Ice_slicing_objects_Test_PDerived_t"]
