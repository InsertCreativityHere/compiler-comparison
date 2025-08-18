# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.slicing.objects.Test.SBase import SBase

from generated.test.Ice.slicing.objects.Test.SBase_forward import _generated_test_Ice_slicing_objects_Test_SBase_t

from generated.test.Ice.slicing.objects.server_private.Test.SBSUnknownDerived_forward import _generated_test_Ice_slicing_objects_server_private_Test_SBSUnknownDerived_t

@dataclass(eq=False)
class SBSUnknownDerived(SBase):
    sbsud: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::SBSUnknownDerived"

_generated_test_Ice_slicing_objects_server_private_Test_SBSUnknownDerived_t = IcePy.defineValue(
    "::Test::SBSUnknownDerived",
    SBSUnknownDerived,
    -1,
    (),
    False,
    _generated_test_Ice_slicing_objects_Test_SBase_t,
    (("sbsud", (), IcePy._t_string, False, 0),))

setattr(SBSUnknownDerived, '_ice_type', _generated_test_Ice_slicing_objects_server_private_Test_SBSUnknownDerived_t)

__all__ = ["SBSUnknownDerived", "_generated_test_Ice_slicing_objects_server_private_Test_SBSUnknownDerived_t"]
