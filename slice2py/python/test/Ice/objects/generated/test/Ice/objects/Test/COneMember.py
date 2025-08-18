# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.objects.Test.COneMember_forward import _generated_test_Ice_objects_Test_COneMember_t

from generated.test.Ice.objects.Test.Empty_forward import _generated_test_Ice_objects_Test_Empty_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.objects.Test.Empty import Empty

@dataclass(eq=False)
class COneMember(Value):
    e: Empty | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::COneMember"

_generated_test_Ice_objects_Test_COneMember_t = IcePy.defineValue(
    "::Test::COneMember",
    COneMember,
    -1,
    (),
    False,
    None,
    (("e", (), _generated_test_Ice_objects_Test_Empty_t, False, 0),))

setattr(COneMember, '_ice_type', _generated_test_Ice_objects_Test_COneMember_t)

__all__ = ["COneMember", "_generated_test_Ice_objects_Test_COneMember_t"]
