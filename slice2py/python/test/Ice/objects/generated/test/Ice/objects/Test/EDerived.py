# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.objects.Test.A1_forward import _generated_test_Ice_objects_Test_A1_t

from generated.test.Ice.objects.Test.EBase import EBase
from generated.test.Ice.objects.Test.EBase import _generated_test_Ice_objects_Test_EBase_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.objects.Test.A1 import A1


@dataclass
class EDerived(EBase):
    a3: A1 | None = None
    a4: A1 | None = None

    _ice_id = "::Test::EDerived"

_generated_test_Ice_objects_Test_EDerived_t = IcePy.defineException(
    "::Test::EDerived",
    EDerived,
    (),
    _generated_test_Ice_objects_Test_EBase_t,
    (
        ("a3", (), _generated_test_Ice_objects_Test_A1_t, False, 0),
        ("a4", (), _generated_test_Ice_objects_Test_A1_t, False, 0)
    ))

setattr(EDerived, '_ice_type', _generated_test_Ice_objects_Test_EDerived_t)

__all__ = ["EDerived", "_generated_test_Ice_objects_Test_EDerived_t"]
