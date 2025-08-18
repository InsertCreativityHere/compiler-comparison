# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.OptionalException import OptionalException
from Test.OptionalException import _Test_OptionalException_t

from dataclasses import dataclass


@dataclass
class DerivedException(OptionalException):
    d1: str = ""
    ss: str | None = "test"
    d2: str = ""

    _ice_id = "::Test::DerivedException"

_Test_DerivedException_t = IcePy.defineException(
    "::Test::DerivedException",
    DerivedException,
    (),
    _Test_OptionalException_t,
    (
        ("d1", (), IcePy._t_string, False, 0),
        ("ss", (), IcePy._t_string, True, 600),
        ("d2", (), IcePy._t_string, False, 0)
    ))

setattr(DerivedException, '_ice_type', _Test_DerivedException_t)

__all__ = ["DerivedException", "_Test_DerivedException_t"]
