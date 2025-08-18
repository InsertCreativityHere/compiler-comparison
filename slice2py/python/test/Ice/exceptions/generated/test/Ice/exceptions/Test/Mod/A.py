# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.exceptions.Test.A import A as _m_generated_test_Ice_exceptions_Test_A_A
from generated.test.Ice.exceptions.Test.A import _generated_test_Ice_exceptions_Test_A_t


@dataclass
class A(_m_generated_test_Ice_exceptions_Test_A_A):
    a2Mem: int = 0

    _ice_id = "::Test::Mod::A"

_generated_test_Ice_exceptions_Test_Mod_A_t = IcePy.defineException(
    "::Test::Mod::A",
    A,
    (),
    _generated_test_Ice_exceptions_Test_A_t,
    (("a2Mem", (), IcePy._t_int, False, 0),))

setattr(A, '_ice_type', _generated_test_Ice_exceptions_Test_Mod_A_t)

__all__ = ["A", "_generated_test_Ice_exceptions_Test_Mod_A_t"]
