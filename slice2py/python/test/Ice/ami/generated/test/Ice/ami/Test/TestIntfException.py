# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class TestIntfException(UserException):

    _ice_id = "::Test::TestIntfException"

_generated_test_Ice_ami_Test_TestIntfException_t = IcePy.defineException(
    "::Test::TestIntfException",
    TestIntfException,
    (),
    None,
    ())

setattr(TestIntfException, '_ice_type', _generated_test_Ice_ami_Test_TestIntfException_t)

__all__ = ["TestIntfException", "_generated_test_Ice_ami_Test_TestIntfException_t"]
