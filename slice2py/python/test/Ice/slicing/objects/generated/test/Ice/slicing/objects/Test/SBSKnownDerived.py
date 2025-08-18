# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.slicing.objects.Test.SBSKnownDerived_forward import _generated_test_Ice_slicing_objects_Test_SBSKnownDerived_t

from generated.test.Ice.slicing.objects.Test.SBase import SBase

from generated.test.Ice.slicing.objects.Test.SBase_forward import _generated_test_Ice_slicing_objects_Test_SBase_t

@dataclass(eq=False)
class SBSKnownDerived(SBase):
    sbskd: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::SBSKnownDerived"

_generated_test_Ice_slicing_objects_Test_SBSKnownDerived_t = IcePy.defineValue(
    "::Test::SBSKnownDerived",
    SBSKnownDerived,
    -1,
    (),
    False,
    _generated_test_Ice_slicing_objects_Test_SBase_t,
    (("sbskd", (), IcePy._t_string, False, 0),))

setattr(SBSKnownDerived, '_ice_type', _generated_test_Ice_slicing_objects_Test_SBSKnownDerived_t)

__all__ = ["SBSKnownDerived", "_generated_test_Ice_slicing_objects_Test_SBSKnownDerived_t"]
