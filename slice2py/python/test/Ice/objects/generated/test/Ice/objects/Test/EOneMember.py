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
class EOneMember(UserException):
    e: Empty | None = None

    _ice_id = "::Test::EOneMember"

_generated_test_Ice_objects_Test_EOneMember_t = IcePy.defineException(
    "::Test::EOneMember",
    EOneMember,
    (),
    None,
    (("e", (), _generated_test_Ice_objects_Test_Empty_t, False, 0),))

setattr(EOneMember, '_ice_type', _generated_test_Ice_objects_Test_EOneMember_t)

__all__ = ["EOneMember", "_generated_test_Ice_objects_Test_EOneMember_t"]
