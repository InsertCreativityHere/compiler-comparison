# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class TestImpossibleException(UserException):

    _ice_id = "::Test::TestImpossibleException"

_Test_TestImpossibleException_t = IcePy.defineException(
    "::Test::TestImpossibleException",
    TestImpossibleException,
    (),
    None,
    ())

setattr(TestImpossibleException, '_ice_type', _Test_TestImpossibleException_t)

__all__ = ["TestImpossibleException", "_Test_TestImpossibleException_t"]
