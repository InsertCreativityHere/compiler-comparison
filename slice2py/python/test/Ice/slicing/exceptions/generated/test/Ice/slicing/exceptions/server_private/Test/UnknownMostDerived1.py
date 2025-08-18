# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.slicing.exceptions.Test.KnownIntermediate import KnownIntermediate
from generated.test.Ice.slicing.exceptions.Test.KnownIntermediate import _generated_test_Ice_slicing_exceptions_Test_KnownIntermediate_t


@dataclass
class UnknownMostDerived1(KnownIntermediate):
    umd1: str = ""

    _ice_id = "::Test::UnknownMostDerived1"

_generated_test_Ice_slicing_exceptions_server_private_Test_UnknownMostDerived1_t = IcePy.defineException(
    "::Test::UnknownMostDerived1",
    UnknownMostDerived1,
    (),
    _generated_test_Ice_slicing_exceptions_Test_KnownIntermediate_t,
    (("umd1", (), IcePy._t_string, False, 0),))

setattr(UnknownMostDerived1, '_ice_type', _generated_test_Ice_slicing_exceptions_server_private_Test_UnknownMostDerived1_t)

__all__ = ["UnknownMostDerived1", "_generated_test_Ice_slicing_exceptions_server_private_Test_UnknownMostDerived1_t"]
