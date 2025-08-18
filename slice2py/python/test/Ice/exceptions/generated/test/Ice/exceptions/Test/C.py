# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.exceptions.Test.B import B
from generated.test.Ice.exceptions.Test.B import _generated_test_Ice_exceptions_Test_B_t


@dataclass
class C(B):
    cMem: int = 0

    _ice_id = "::Test::C"

_generated_test_Ice_exceptions_Test_C_t = IcePy.defineException(
    "::Test::C",
    C,
    (),
    _generated_test_Ice_exceptions_Test_B_t,
    (("cMem", (), IcePy._t_int, False, 0),))

setattr(C, '_ice_type', _generated_test_Ice_exceptions_Test_C_t)

__all__ = ["C", "_generated_test_Ice_exceptions_Test_C_t"]
