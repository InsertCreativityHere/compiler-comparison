# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.BaseException import BaseException
from Test.BaseException import _Test_BaseException_t

from Test.D2_forward import _Test_D2_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.D2 import D2


@dataclass
class UnknownDerivedException(BaseException):
    sude: str = ""
    pd2: D2 | None = None

    _ice_id = "::Test::UnknownDerivedException"

_Test_UnknownDerivedException_t = IcePy.defineException(
    "::Test::UnknownDerivedException",
    UnknownDerivedException,
    (),
    _Test_BaseException_t,
    (
        ("sude", (), IcePy._t_string, False, 0),
        ("pd2", (), _Test_D2_t, False, 0)
    ))

setattr(UnknownDerivedException, '_ice_type', _Test_UnknownDerivedException_t)

__all__ = ["UnknownDerivedException", "_Test_UnknownDerivedException_t"]
