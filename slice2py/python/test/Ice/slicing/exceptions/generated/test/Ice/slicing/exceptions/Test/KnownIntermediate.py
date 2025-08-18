# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.slicing.exceptions.Test.Base import Base
from generated.test.Ice.slicing.exceptions.Test.Base import _generated_test_Ice_slicing_exceptions_Test_Base_t


@dataclass
class KnownIntermediate(Base):
    ki: str = ""

    _ice_id = "::Test::KnownIntermediate"

_generated_test_Ice_slicing_exceptions_Test_KnownIntermediate_t = IcePy.defineException(
    "::Test::KnownIntermediate",
    KnownIntermediate,
    (),
    _generated_test_Ice_slicing_exceptions_Test_Base_t,
    (("ki", (), IcePy._t_string, False, 0),))

setattr(KnownIntermediate, '_ice_type', _generated_test_Ice_slicing_exceptions_Test_KnownIntermediate_t)

__all__ = ["KnownIntermediate", "_generated_test_Ice_slicing_exceptions_Test_KnownIntermediate_t"]
