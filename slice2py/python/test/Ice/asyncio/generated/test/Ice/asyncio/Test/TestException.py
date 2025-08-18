# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class TestException(UserException):

    _ice_id = "::Test::TestException"

_generated_test_Ice_asyncio_Test_TestException_t = IcePy.defineException(
    "::Test::TestException",
    TestException,
    (),
    None,
    ())

setattr(TestException, '_ice_type', _generated_test_Ice_asyncio_Test_TestException_t)

__all__ = ["TestException", "_generated_test_Ice_asyncio_Test_TestException_t"]
