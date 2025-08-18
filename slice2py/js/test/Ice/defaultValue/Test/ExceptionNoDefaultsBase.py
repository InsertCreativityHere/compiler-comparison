# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from Test.ByteSeq import _Test_ByteSeq_t

from Test.Color import Color
from Test.Color import _Test_Color_t

from dataclasses import dataclass
from dataclasses import field


@dataclass
class ExceptionNoDefaultsBase(UserException):
    str: str = ""
    c1: Color = Color.red
    bs: bytes = field(default_factory=bytes)

    _ice_id = "::Test::ExceptionNoDefaultsBase"

_Test_ExceptionNoDefaultsBase_t = IcePy.defineException(
    "::Test::ExceptionNoDefaultsBase",
    ExceptionNoDefaultsBase,
    (),
    None,
    (
        ("str", (), IcePy._t_string, False, 0),
        ("c1", (), _Test_Color_t, False, 0),
        ("bs", (), _Test_ByteSeq_t, False, 0)
    ))

setattr(ExceptionNoDefaultsBase, '_ice_type', _Test_ExceptionNoDefaultsBase_t)

__all__ = ["ExceptionNoDefaultsBase", "_Test_ExceptionNoDefaultsBase_t"]
