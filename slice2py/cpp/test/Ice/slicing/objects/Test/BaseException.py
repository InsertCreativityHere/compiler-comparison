# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from Test.B_forward import _Test_B_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.B import B


@dataclass
class BaseException(UserException):
    sbe: str = ""
    pb: B | None = None

    _ice_id = "::Test::BaseException"

_Test_BaseException_t = IcePy.defineException(
    "::Test::BaseException",
    BaseException,
    (),
    None,
    (
        ("sbe", (), IcePy._t_string, False, 0),
        ("pb", (), _Test_B_t, False, 0)
    ))

setattr(BaseException, '_ice_type', _Test_BaseException_t)

__all__ = ["BaseException", "_Test_BaseException_t"]
