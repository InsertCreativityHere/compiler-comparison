# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass
from dataclasses import field

from generated.test.Ice.slicing.objects.Test.BSeq import _generated_test_Ice_slicing_objects_Test_BSeq_t

from generated.test.Ice.slicing.objects.Test.SS2_forward import _generated_test_Ice_slicing_objects_Test_SS2_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.slicing.objects.Test.B import B

@dataclass(eq=False)
class SS2(Value):
    s: list[B | None] = field(default_factory=list)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::SS2"

_generated_test_Ice_slicing_objects_Test_SS2_t = IcePy.defineValue(
    "::Test::SS2",
    SS2,
    -1,
    (),
    False,
    None,
    (("s", (), _generated_test_Ice_slicing_objects_Test_BSeq_t, False, 0),))

setattr(SS2, '_ice_type', _generated_test_Ice_slicing_objects_Test_SS2_t)

__all__ = ["SS2", "_generated_test_Ice_slicing_objects_Test_SS2_t"]
