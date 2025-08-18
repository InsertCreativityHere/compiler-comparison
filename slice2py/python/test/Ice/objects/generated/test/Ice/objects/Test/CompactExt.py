# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.objects.Test.Compact import Compact

from generated.test.Ice.objects.Test.CompactExt_forward import _generated_test_Ice_objects_Test_CompactExt_t

from generated.test.Ice.objects.Test.Compact_forward import _generated_test_Ice_objects_Test_Compact_t

@dataclass(eq=False)
class CompactExt(Compact):

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::CompactExt"

_generated_test_Ice_objects_Test_CompactExt_t = IcePy.defineValue(
    "::Test::CompactExt",
    CompactExt,
    789,
    (),
    False,
    _generated_test_Ice_objects_Test_Compact_t,
    ())

setattr(CompactExt, '_ice_type', _generated_test_Ice_objects_Test_CompactExt_t)

__all__ = ["CompactExt", "_generated_test_Ice_objects_Test_CompactExt_t"]
