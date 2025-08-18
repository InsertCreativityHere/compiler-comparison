# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class TestImpossibleException(UserException):

    _ice_id = "::Test::TestImpossibleException"

_generated_test_Ice_servantLocator_Test_TestImpossibleException_t = IcePy.defineException(
    "::Test::TestImpossibleException",
    TestImpossibleException,
    (),
    None,
    ())

setattr(TestImpossibleException, '_ice_type', _generated_test_Ice_servantLocator_Test_TestImpossibleException_t)

__all__ = ["TestImpossibleException", "_generated_test_Ice_servantLocator_Test_TestImpossibleException_t"]
