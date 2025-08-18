# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass

from generated.test.Ice.objects.Test.Empty_forward import _generated_test_Ice_objects_Test_Empty_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.objects.Test.Empty import Empty


@dataclass
class ETwoMembers(UserException):
    e1: Empty | None = None
    e2: Empty | None = None

    _ice_id = "::Test::ETwoMembers"

_generated_test_Ice_objects_Test_ETwoMembers_t = IcePy.defineException(
    "::Test::ETwoMembers",
    ETwoMembers,
    (),
    None,
    (
        ("e1", (), _generated_test_Ice_objects_Test_Empty_t, False, 0),
        ("e2", (), _generated_test_Ice_objects_Test_Empty_t, False, 0)
    ))

setattr(ETwoMembers, '_ice_type', _generated_test_Ice_objects_Test_ETwoMembers_t)

__all__ = ["ETwoMembers", "_generated_test_Ice_objects_Test_ETwoMembers_t"]
