# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.slicing.exceptions.server_private.Test.UnknownIntermediate import UnknownIntermediate
from generated.test.Ice.slicing.exceptions.server_private.Test.UnknownIntermediate import _generated_test_Ice_slicing_exceptions_server_private_Test_UnknownIntermediate_t


@dataclass
class UnknownMostDerived2(UnknownIntermediate):
    umd2: str = ""

    _ice_id = "::Test::UnknownMostDerived2"

_generated_test_Ice_slicing_exceptions_server_private_Test_UnknownMostDerived2_t = IcePy.defineException(
    "::Test::UnknownMostDerived2",
    UnknownMostDerived2,
    (),
    _generated_test_Ice_slicing_exceptions_server_private_Test_UnknownIntermediate_t,
    (("umd2", (), IcePy._t_string, False, 0),))

setattr(UnknownMostDerived2, '_ice_type', _generated_test_Ice_slicing_exceptions_server_private_Test_UnknownMostDerived2_t)

__all__ = ["UnknownMostDerived2", "_generated_test_Ice_slicing_exceptions_server_private_Test_UnknownMostDerived2_t"]
