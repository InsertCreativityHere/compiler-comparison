# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass
from dataclasses import field

from generated.test.Ice.defaultValue.Test.ByteSeq import _generated_test_Ice_defaultValue_Test_ByteSeq_t

from generated.test.Ice.defaultValue.Test.Color import Color
from generated.test.Ice.defaultValue.Test.Color import _generated_test_Ice_defaultValue_Test_Color_t


@dataclass
class ExceptionNoDefaultsBase(UserException):
    str: str = ""
    c1: Color = Color.red
    bs: bytes = field(default_factory=bytes)

    _ice_id = "::Test::ExceptionNoDefaultsBase"

_generated_test_Ice_defaultValue_Test_ExceptionNoDefaultsBase_t = IcePy.defineException(
    "::Test::ExceptionNoDefaultsBase",
    ExceptionNoDefaultsBase,
    (),
    None,
    (
        ("str", (), IcePy._t_string, False, 0),
        ("c1", (), _generated_test_Ice_defaultValue_Test_Color_t, False, 0),
        ("bs", (), _generated_test_Ice_defaultValue_Test_ByteSeq_t, False, 0)
    ))

setattr(ExceptionNoDefaultsBase, '_ice_type', _generated_test_Ice_defaultValue_Test_ExceptionNoDefaultsBase_t)

__all__ = ["ExceptionNoDefaultsBase", "_generated_test_Ice_defaultValue_Test_ExceptionNoDefaultsBase_t"]
