# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.slicing.objects.Test.SS1_forward import _generated_test_Ice_slicing_objects_Test_SS1_t

from generated.test.Ice.slicing.objects.Test.SS2_forward import _generated_test_Ice_slicing_objects_Test_SS2_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.slicing.objects.Test.SS1 import SS1
    from generated.test.Ice.slicing.objects.Test.SS2 import SS2


@dataclass
class SS3:
    c1: SS1 | None = None
    c2: SS2 | None = None

_generated_test_Ice_slicing_objects_Test_SS3_t = IcePy.defineStruct(
    "::Test::SS3",
    SS3,
    (),
    (
        ("c1", (), _generated_test_Ice_slicing_objects_Test_SS1_t),
        ("c2", (), _generated_test_Ice_slicing_objects_Test_SS2_t)
    ))

__all__ = ["SS3", "_generated_test_Ice_slicing_objects_Test_SS3_t"]
