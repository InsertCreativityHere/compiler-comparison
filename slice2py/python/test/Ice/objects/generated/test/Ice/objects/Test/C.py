# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.objects.Test.B_forward import _generated_test_Ice_objects_Test_B_t

from generated.test.Ice.objects.Test.C_forward import _generated_test_Ice_objects_Test_C_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.objects.Test.B import B

@dataclass(eq=False)
class C(Value):
    theB: B | None = None
    preMarshalInvoked: bool = False
    postUnmarshalInvoked: bool = False

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::C"

_generated_test_Ice_objects_Test_C_t = IcePy.defineValue(
    "::Test::C",
    C,
    -1,
    (),
    False,
    None,
    (
        ("theB", (), _generated_test_Ice_objects_Test_B_t, False, 0),
        ("preMarshalInvoked", (), IcePy._t_bool, False, 0),
        ("postUnmarshalInvoked", (), IcePy._t_bool, False, 0)
    ))

setattr(C, '_ice_type', _generated_test_Ice_objects_Test_C_t)

__all__ = ["C", "_generated_test_Ice_objects_Test_C_t"]
