# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass
from dataclasses import field

from generated.test.Ice.objects.Test.LMap import _generated_test_Ice_objects_Test_LMap_t

from generated.test.Ice.objects.Test.M_forward import _generated_test_Ice_objects_Test_M_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.objects.Test.L import L
    from generated.test.Ice.objects.Test.StructKey import StructKey

@dataclass(eq=False)
class M(Value):
    v: dict[StructKey, L | None] = field(default_factory=dict)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::M"

_generated_test_Ice_objects_Test_M_t = IcePy.defineValue(
    "::Test::M",
    M,
    -1,
    (),
    False,
    None,
    (("v", (), _generated_test_Ice_objects_Test_LMap_t, False, 0),))

setattr(M, '_ice_type', _generated_test_Ice_objects_Test_M_t)

__all__ = ["M", "_generated_test_Ice_objects_Test_M_t"]
