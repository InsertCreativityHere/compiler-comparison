# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.slicing.objects.Test.BaseException import BaseException
from generated.test.Ice.slicing.objects.Test.BaseException import _generated_test_Ice_slicing_objects_Test_BaseException_t

from generated.test.Ice.slicing.objects.server_private.Test.D2_forward import _generated_test_Ice_slicing_objects_server_private_Test_D2_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.slicing.objects.server_private.Test.D2 import D2


@dataclass
class UnknownDerivedException(BaseException):
    sude: str = ""
    pd2: D2 | None = None

    _ice_id = "::Test::UnknownDerivedException"

_generated_test_Ice_slicing_objects_server_private_Test_UnknownDerivedException_t = IcePy.defineException(
    "::Test::UnknownDerivedException",
    UnknownDerivedException,
    (),
    _generated_test_Ice_slicing_objects_Test_BaseException_t,
    (
        ("sude", (), IcePy._t_string, False, 0),
        ("pd2", (), _generated_test_Ice_slicing_objects_server_private_Test_D2_t, False, 0)
    ))

setattr(UnknownDerivedException, '_ice_type', _generated_test_Ice_slicing_objects_server_private_Test_UnknownDerivedException_t)

__all__ = ["UnknownDerivedException", "_generated_test_Ice_slicing_objects_server_private_Test_UnknownDerivedException_t"]
