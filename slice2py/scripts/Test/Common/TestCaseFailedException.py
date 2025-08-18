# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class TestCaseFailedException(UserException):
    output: str = ""

    _ice_id = "::Test::Common::TestCaseFailedException"

_Test_Common_TestCaseFailedException_t = IcePy.defineException(
    "::Test::Common::TestCaseFailedException",
    TestCaseFailedException,
    (),
    None,
    (("output", (), IcePy._t_string, False, 0),))

setattr(TestCaseFailedException, '_ice_type', _Test_Common_TestCaseFailedException_t)

__all__ = ["TestCaseFailedException", "_Test_Common_TestCaseFailedException_t"]
