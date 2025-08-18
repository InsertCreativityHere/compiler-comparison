# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.slicing.objects.Test.BaseException import BaseException
from generated.test.Ice.slicing.objects.Test.BaseException import _generated_test_Ice_slicing_objects_Test_BaseException_t

from generated.test.Ice.slicing.objects.Test.D1_forward import _generated_test_Ice_slicing_objects_Test_D1_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.slicing.objects.Test.D1 import D1


@dataclass
class DerivedException(BaseException):
    sde: str = ""
    pd1: D1 | None = None

    _ice_id = "::Test::DerivedException"

_generated_test_Ice_slicing_objects_Test_DerivedException_t = IcePy.defineException(
    "::Test::DerivedException",
    DerivedException,
    (),
    _generated_test_Ice_slicing_objects_Test_BaseException_t,
    (
        ("sde", (), IcePy._t_string, False, 0),
        ("pd1", (), _generated_test_Ice_slicing_objects_Test_D1_t, False, 0)
    ))

setattr(DerivedException, '_ice_type', _generated_test_Ice_slicing_objects_Test_DerivedException_t)

__all__ = ["DerivedException", "_generated_test_Ice_slicing_objects_Test_DerivedException_t"]
