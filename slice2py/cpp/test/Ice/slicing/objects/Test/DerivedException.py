# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.BaseException import BaseException
from Test.BaseException import _Test_BaseException_t

from Test.D1_forward import _Test_D1_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.D1 import D1


@dataclass
class DerivedException(BaseException):
    sde: str = ""
    pd1: D1 | None = None

    _ice_id = "::Test::DerivedException"

_Test_DerivedException_t = IcePy.defineException(
    "::Test::DerivedException",
    DerivedException,
    (),
    _Test_BaseException_t,
    (
        ("sde", (), IcePy._t_string, False, 0),
        ("pd1", (), _Test_D1_t, False, 0)
    ))

setattr(DerivedException, '_ice_type', _Test_DerivedException_t)

__all__ = ["DerivedException", "_Test_DerivedException_t"]
