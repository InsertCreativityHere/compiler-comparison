# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.BaseException import BaseException
from Test.BaseException import _Test_BaseException_t

from dataclasses import dataclass


@dataclass
class InvalidLengthException(BaseException):
    length: int = 0

    _ice_id = "::Test::InvalidLengthException"

_Test_InvalidLengthException_t = IcePy.defineException(
    "::Test::InvalidLengthException",
    InvalidLengthException,
    (),
    _Test_BaseException_t,
    (("length", (), IcePy._t_int, False, 0),))

setattr(InvalidLengthException, '_ice_type', _Test_InvalidLengthException_t)

__all__ = ["InvalidLengthException", "_Test_InvalidLengthException_t"]
