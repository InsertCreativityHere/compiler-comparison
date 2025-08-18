# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from Test.MyClass_forward import _Test_MyClass_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.MyClass import MyClass


@dataclass
class MyException(UserException):
    c: MyClass | None = None

    _ice_id = "::Test::MyException"

_Test_MyException_t = IcePy.defineException(
    "::Test::MyException",
    MyException,
    (),
    None,
    (("c", (), _Test_MyClass_t, False, 0),))

setattr(MyException, '_ice_type', _Test_MyException_t)

__all__ = ["MyException", "_Test_MyException_t"]
