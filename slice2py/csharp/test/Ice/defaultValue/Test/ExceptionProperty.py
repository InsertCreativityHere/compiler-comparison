# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class ExceptionProperty(UserException):
    boolFalse: bool = False
    boolTrue: bool = True
    b: int = 1
    s: int = 2
    i: int = 3
    l: int = 4
    f: float = 5.1
    d: float = 6.2
    str: str = "foo bar"
    noDefault: str = ""
    zeroI: int = 0
    zeroL: int = 0
    zeroF: float = 0
    zeroDotF: float = 0
    zeroD: float = 0
    zeroDotD: float = 0

    _ice_id = "::Test::ExceptionProperty"

_Test_ExceptionProperty_t = IcePy.defineException(
    "::Test::ExceptionProperty",
    ExceptionProperty,
    (),
    None,
    (
        ("boolFalse", (), IcePy._t_bool, False, 0),
        ("boolTrue", (), IcePy._t_bool, False, 0),
        ("b", (), IcePy._t_byte, False, 0),
        ("s", (), IcePy._t_short, False, 0),
        ("i", (), IcePy._t_int, False, 0),
        ("l", (), IcePy._t_long, False, 0),
        ("f", (), IcePy._t_float, False, 0),
        ("d", (), IcePy._t_double, False, 0),
        ("str", (), IcePy._t_string, False, 0),
        ("noDefault", (), IcePy._t_string, False, 0),
        ("zeroI", (), IcePy._t_int, False, 0),
        ("zeroL", (), IcePy._t_long, False, 0),
        ("zeroF", (), IcePy._t_float, False, 0),
        ("zeroDotF", (), IcePy._t_float, False, 0),
        ("zeroD", (), IcePy._t_double, False, 0),
        ("zeroDotD", (), IcePy._t_double, False, 0)
    ))

setattr(ExceptionProperty, '_ice_type', _Test_ExceptionProperty_t)

__all__ = ["ExceptionProperty", "_Test_ExceptionProperty_t"]
