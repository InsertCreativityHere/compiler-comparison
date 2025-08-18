# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.slicing.exceptions.Test.KnownIntermediate import KnownIntermediate
from generated.test.Ice.slicing.exceptions.Test.KnownIntermediate import _generated_test_Ice_slicing_exceptions_Test_KnownIntermediate_t


@dataclass
class KnownMostDerived(KnownIntermediate):
    kmd: str = ""

    _ice_id = "::Test::KnownMostDerived"

_generated_test_Ice_slicing_exceptions_Test_KnownMostDerived_t = IcePy.defineException(
    "::Test::KnownMostDerived",
    KnownMostDerived,
    (),
    _generated_test_Ice_slicing_exceptions_Test_KnownIntermediate_t,
    (("kmd", (), IcePy._t_string, False, 0),))

setattr(KnownMostDerived, '_ice_type', _generated_test_Ice_slicing_exceptions_Test_KnownMostDerived_t)

__all__ = ["KnownMostDerived", "_generated_test_Ice_slicing_exceptions_Test_KnownMostDerived_t"]
