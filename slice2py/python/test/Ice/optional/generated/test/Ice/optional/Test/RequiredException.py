# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.optional.Test.OptionalException import OptionalException
from generated.test.Ice.optional.Test.OptionalException import _generated_test_Ice_optional_Test_OptionalException_t


@dataclass
class RequiredException(OptionalException):
    ss: str = "test"

    _ice_id = "::Test::RequiredException"

_generated_test_Ice_optional_Test_RequiredException_t = IcePy.defineException(
    "::Test::RequiredException",
    RequiredException,
    (),
    _generated_test_Ice_optional_Test_OptionalException_t,
    (("ss", (), IcePy._t_string, False, 0),))

setattr(RequiredException, '_ice_type', _generated_test_Ice_optional_Test_RequiredException_t)

__all__ = ["RequiredException", "_generated_test_Ice_optional_Test_RequiredException_t"]
