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
class EOneMember(UserException):
    e: Empty | None = None

    _ice_id = "::Test::EOneMember"

_Test_EOneMember_t = IcePy.defineException(
    "::Test::EOneMember",
    EOneMember,
    (),
    None,
    (("e", (), _Test_Empty_t, False, 0),))

setattr(EOneMember, '_ice_type', _Test_EOneMember_t)

__all__ = ["EOneMember", "_Test_EOneMember_t"]
