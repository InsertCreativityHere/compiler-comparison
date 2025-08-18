# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.exceptions.Test.A import A
from generated.test.Ice.exceptions.Test.A import _generated_test_Ice_exceptions_Test_A_t


@dataclass
class B(A):
    bMem: int = 0

    _ice_id = "::Test::B"

_generated_test_Ice_exceptions_Test_B_t = IcePy.defineException(
    "::Test::B",
    B,
    (),
    _generated_test_Ice_exceptions_Test_A_t,
    (("bMem", (), IcePy._t_int, False, 0),))

setattr(B, '_ice_type', _generated_test_Ice_exceptions_Test_B_t)

__all__ = ["B", "_generated_test_Ice_exceptions_Test_B_t"]
