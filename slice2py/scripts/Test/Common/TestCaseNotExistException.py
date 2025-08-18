# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class TestCaseNotExistException(UserException):
    reason: str = ""

    _ice_id = "::Test::Common::TestCaseNotExistException"

_Test_Common_TestCaseNotExistException_t = IcePy.defineException(
    "::Test::Common::TestCaseNotExistException",
    TestCaseNotExistException,
    (),
    None,
    (("reason", (), IcePy._t_string, False, 0),))

setattr(TestCaseNotExistException, '_ice_type', _Test_Common_TestCaseNotExistException_t)

__all__ = ["TestCaseNotExistException", "_Test_Common_TestCaseNotExistException_t"]
