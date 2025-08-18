# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.OptionalException import OptionalException
from Test.OptionalException import _Test_OptionalException_t

from dataclasses import dataclass


@dataclass
class RequiredException(OptionalException):
    ss: str = "test"

    _ice_id = "::Test::RequiredException"

_Test_RequiredException_t = IcePy.defineException(
    "::Test::RequiredException",
    RequiredException,
    (),
    _Test_OptionalException_t,
    (("ss", (), IcePy._t_string, False, 0),))

setattr(RequiredException, '_ice_type', _Test_RequiredException_t)

__all__ = ["RequiredException", "_Test_RequiredException_t"]
