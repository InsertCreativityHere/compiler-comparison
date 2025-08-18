# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from Test.Base_forward import _Test_Base_t

from Test.Struct1 import Struct1
from Test.Struct1 import _Test_Struct1_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.Base import Base


@dataclass
class Ex(UserException):
    s: Struct1 = field(default_factory=Struct1)
    b: Base | None = None

    _ice_id = "::Test::Ex"

_Test_Ex_t = IcePy.defineException(
    "::Test::Ex",
    Ex,
    (),
    None,
    (
        ("s", (), _Test_Struct1_t, False, 0),
        ("b", (), _Test_Base_t, False, 0)
    ))

setattr(Ex, '_ice_type', _Test_Ex_t)

__all__ = ["Ex", "_Test_Ex_t"]
