# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.slicing.exceptions.Test.Base import Base
from generated.test.Ice.slicing.exceptions.Test.Base import _generated_test_Ice_slicing_exceptions_Test_Base_t


@dataclass
class UnknownDerived(Base):
    ud: str = ""

    _ice_id = "::Test::UnknownDerived"

_generated_test_Ice_slicing_exceptions_server_private_Test_UnknownDerived_t = IcePy.defineException(
    "::Test::UnknownDerived",
    UnknownDerived,
    (),
    _generated_test_Ice_slicing_exceptions_Test_Base_t,
    (("ud", (), IcePy._t_string, False, 0),))

setattr(UnknownDerived, '_ice_type', _generated_test_Ice_slicing_exceptions_server_private_Test_UnknownDerived_t)

__all__ = ["UnknownDerived", "_generated_test_Ice_slicing_exceptions_server_private_Test_UnknownDerived_t"]
