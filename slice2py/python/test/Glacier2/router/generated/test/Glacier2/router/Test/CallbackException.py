# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class CallbackException(UserException):
    someValue: float = 0.0
    someString: str = ""

    _ice_id = "::Test::CallbackException"

_generated_test_Glacier2_router_Test_CallbackException_t = IcePy.defineException(
    "::Test::CallbackException",
    CallbackException,
    (),
    None,
    (
        ("someValue", (), IcePy._t_double, False, 0),
        ("someString", (), IcePy._t_string, False, 0)
    ))

setattr(CallbackException, '_ice_type', _generated_test_Glacier2_router_Test_CallbackException_t)

__all__ = ["CallbackException", "_generated_test_Glacier2_router_Test_CallbackException_t"]
