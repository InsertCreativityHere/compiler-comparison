# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass

from generated.test.Ice.objects.Test.A1_forward import _generated_test_Ice_objects_Test_A1_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.objects.Test.A1 import A1


@dataclass
class EBase(UserException):
    a1: A1 | None = None
    a2: A1 | None = None

    _ice_id = "::Test::EBase"

_generated_test_Ice_objects_Test_EBase_t = IcePy.defineException(
    "::Test::EBase",
    EBase,
    (),
    None,
    (
        ("a1", (), _generated_test_Ice_objects_Test_A1_t, False, 0),
        ("a2", (), _generated_test_Ice_objects_Test_A1_t, False, 0)
    ))

setattr(EBase, '_ice_type', _generated_test_Ice_objects_Test_EBase_t)

__all__ = ["EBase", "_generated_test_Ice_objects_Test_EBase_t"]
