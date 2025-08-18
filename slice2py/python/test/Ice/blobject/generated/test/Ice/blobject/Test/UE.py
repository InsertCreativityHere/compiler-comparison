# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class UE(UserException):

    _ice_id = "::Test::UE"

_generated_test_Ice_blobject_Test_UE_t = IcePy.defineException(
    "::Test::UE",
    UE,
    (),
    None,
    ())

setattr(UE, '_ice_type', _generated_test_Ice_blobject_Test_UE_t)

__all__ = ["UE", "_generated_test_Ice_blobject_Test_UE_t"]
