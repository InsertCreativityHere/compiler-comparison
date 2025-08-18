# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class A(UserException):
    aMem: int = 0

    _ice_id = "::Test::A"

_Test_A_t = IcePy.defineException(
    "::Test::A",
    A,
    (),
    None,
    (("aMem", (), IcePy._t_int, False, 0),))

setattr(A, '_ice_type', _Test_A_t)

__all__ = ["A", "_Test_A_t"]
