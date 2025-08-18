# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.slicing.exceptions.Test.Base import Base
from generated.test.Ice.slicing.exceptions.Test.Base import _generated_test_Ice_slicing_exceptions_Test_Base_t


@dataclass
class UnknownIntermediate(Base):
    ui: str = ""

    _ice_id = "::Test::UnknownIntermediate"

_generated_test_Ice_slicing_exceptions_server_private_Test_UnknownIntermediate_t = IcePy.defineException(
    "::Test::UnknownIntermediate",
    UnknownIntermediate,
    (),
    _generated_test_Ice_slicing_exceptions_Test_Base_t,
    (("ui", (), IcePy._t_string, False, 0),))

setattr(UnknownIntermediate, '_ice_type', _generated_test_Ice_slicing_exceptions_server_private_Test_UnknownIntermediate_t)

__all__ = ["UnknownIntermediate", "_generated_test_Ice_slicing_exceptions_server_private_Test_UnknownIntermediate_t"]
