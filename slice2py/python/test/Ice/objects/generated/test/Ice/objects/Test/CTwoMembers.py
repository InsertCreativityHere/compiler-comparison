# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.objects.Test.CTwoMembers_forward import _generated_test_Ice_objects_Test_CTwoMembers_t

from generated.test.Ice.objects.Test.Empty_forward import _generated_test_Ice_objects_Test_Empty_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.objects.Test.Empty import Empty

@dataclass(eq=False)
class CTwoMembers(Value):
    e1: Empty | None = None
    e2: Empty | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::CTwoMembers"

_generated_test_Ice_objects_Test_CTwoMembers_t = IcePy.defineValue(
    "::Test::CTwoMembers",
    CTwoMembers,
    -1,
    (),
    False,
    None,
    (
        ("e1", (), _generated_test_Ice_objects_Test_Empty_t, False, 0),
        ("e2", (), _generated_test_Ice_objects_Test_Empty_t, False, 0)
    ))

setattr(CTwoMembers, '_ice_type', _generated_test_Ice_objects_Test_CTwoMembers_t)

__all__ = ["CTwoMembers", "_generated_test_Ice_objects_Test_CTwoMembers_t"]
