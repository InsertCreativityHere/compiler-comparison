# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.BaseException import BaseException
from Test.BaseException import _Test_BaseException_t

from dataclasses import dataclass


@dataclass
class InvalidPointException(BaseException):
    index: int = 0

    _ice_id = "::Test::InvalidPointException"

_Test_InvalidPointException_t = IcePy.defineException(
    "::Test::InvalidPointException",
    InvalidPointException,
    (),
    _Test_BaseException_t,
    (("index", (), IcePy._t_int, False, 0),))

setattr(InvalidPointException, '_ice_type', _Test_InvalidPointException_t)

__all__ = ["InvalidPointException", "_Test_InvalidPointException_t"]
