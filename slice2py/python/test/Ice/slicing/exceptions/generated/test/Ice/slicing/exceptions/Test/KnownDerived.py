# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.slicing.exceptions.Test.Base import Base
from generated.test.Ice.slicing.exceptions.Test.Base import _generated_test_Ice_slicing_exceptions_Test_Base_t


@dataclass
class KnownDerived(Base):
    kd: str = ""

    _ice_id = "::Test::KnownDerived"

_generated_test_Ice_slicing_exceptions_Test_KnownDerived_t = IcePy.defineException(
    "::Test::KnownDerived",
    KnownDerived,
    (),
    _generated_test_Ice_slicing_exceptions_Test_Base_t,
    (("kd", (), IcePy._t_string, False, 0),))

setattr(KnownDerived, '_ice_type', _generated_test_Ice_slicing_exceptions_Test_KnownDerived_t)

__all__ = ["KnownDerived", "_generated_test_Ice_slicing_exceptions_Test_KnownDerived_t"]
