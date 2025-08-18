# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from Test.Empty_forward import _Test_Empty_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.Empty import Empty


@dataclass
class ETwoMembers(UserException):
    e1: Empty | None = None
    e2: Empty | None = None

    _ice_id = "::Test::ETwoMembers"

_Test_ETwoMembers_t = IcePy.defineException(
    "::Test::ETwoMembers",
    ETwoMembers,
    (),
    None,
    (
        ("e1", (), _Test_Empty_t, False, 0),
        ("e2", (), _Test_Empty_t, False, 0)
    ))

setattr(ETwoMembers, '_ice_type', _Test_ETwoMembers_t)

__all__ = ["ETwoMembers", "_Test_ETwoMembers_t"]
