# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.slicing.objects.server_private.Test.SUnknown_forward import _generated_test_Ice_slicing_objects_server_private_Test_SUnknown_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.slicing.objects.server_private.Test.SUnknown import SUnknown

@dataclass(eq=False)
class SUnknown(Value):
    su: str = ""
    cycle: SUnknown | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::SUnknown"

_generated_test_Ice_slicing_objects_server_private_Test_SUnknown_t = IcePy.defineValue(
    "::Test::SUnknown",
    SUnknown,
    -1,
    (),
    False,
    None,
    (
        ("su", (), IcePy._t_string, False, 0),
        ("cycle", (), _generated_test_Ice_slicing_objects_server_private_Test_SUnknown_t, False, 0)
    ))

setattr(SUnknown, '_ice_type', _generated_test_Ice_slicing_objects_server_private_Test_SUnknown_t)

__all__ = ["SUnknown", "_generated_test_Ice_slicing_objects_server_private_Test_SUnknown_t"]
