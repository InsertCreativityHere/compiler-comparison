# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class MyException(UserException):

    _ice_id = "::Test::MyException"

_Test_MyException_t = IcePy.defineException(
    "::Test::MyException",
    MyException,
    (),
    None,
    ())

setattr(MyException, '_ice_type', _Test_MyException_t)

__all__ = ["MyException", "_Test_MyException_t"]
