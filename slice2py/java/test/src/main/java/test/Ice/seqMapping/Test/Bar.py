# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from Test.SLS import _Test_SLS_t

from Test.SerialLarge import _Test_SerialLarge_t

from dataclasses import dataclass
from dataclasses import field


@dataclass
class Bar(UserException):
    SLmem: bytes = field(default_factory=bytes)
    SLSmem: list[bytes] = field(default_factory=list)

    _ice_id = "::Test::Bar"

_Test_Bar_t = IcePy.defineException(
    "::Test::Bar",
    Bar,
    (),
    None,
    (
        ("SLmem", (), _Test_SerialLarge_t, False, 0),
        ("SLSmem", (), _Test_SLS_t, False, 0)
    ))

setattr(Bar, '_ice_type', _Test_Bar_t)

__all__ = ["Bar", "_Test_Bar_t"]
