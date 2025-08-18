# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class TestIntfUserException(UserException):

    _ice_id = "::Test::TestIntfUserException"

_generated_test_Ice_servantLocator_Test_TestIntfUserException_t = IcePy.defineException(
    "::Test::TestIntfUserException",
    TestIntfUserException,
    (),
    None,
    ())

setattr(TestIntfUserException, '_ice_type', _generated_test_Ice_servantLocator_Test_TestIntfUserException_t)

__all__ = ["TestIntfUserException", "_generated_test_Ice_servantLocator_Test_TestIntfUserException_t"]
