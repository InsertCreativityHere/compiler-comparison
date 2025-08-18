# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class TestIntfUserException(UserException):

    _ice_id = "::Test::TestIntfUserException"

_Test_TestIntfUserException_t = IcePy.defineException(
    "::Test::TestIntfUserException",
    TestIntfUserException,
    (),
    None,
    ())

setattr(TestIntfUserException, '_ice_type', _Test_TestIntfUserException_t)

__all__ = ["TestIntfUserException", "_Test_TestIntfUserException_t"]
