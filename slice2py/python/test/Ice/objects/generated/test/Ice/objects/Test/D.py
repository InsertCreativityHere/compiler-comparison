# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.objects.Test.A_forward import _generated_test_Ice_objects_Test_A_t

from generated.test.Ice.objects.Test.B_forward import _generated_test_Ice_objects_Test_B_t

from generated.test.Ice.objects.Test.C_forward import _generated_test_Ice_objects_Test_C_t

from generated.test.Ice.objects.Test.D_forward import _generated_test_Ice_objects_Test_D_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.objects.Test.A import A
    from generated.test.Ice.objects.Test.B import B
    from generated.test.Ice.objects.Test.C import C

@dataclass(eq=False)
class D(Value):
    theA: A | None = None
    theB: B | None = None
    theC: C | None = None
    preMarshalInvoked: bool = False
    postUnmarshalInvoked: bool = False

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::D"

_generated_test_Ice_objects_Test_D_t = IcePy.defineValue(
    "::Test::D",
    D,
    -1,
    (),
    False,
    None,
    (
        ("theA", (), _generated_test_Ice_objects_Test_A_t, False, 0),
        ("theB", (), _generated_test_Ice_objects_Test_B_t, False, 0),
        ("theC", (), _generated_test_Ice_objects_Test_C_t, False, 0),
        ("preMarshalInvoked", (), IcePy._t_bool, False, 0),
        ("postUnmarshalInvoked", (), IcePy._t_bool, False, 0)
    ))

setattr(D, '_ice_type', _generated_test_Ice_objects_Test_D_t)

__all__ = ["D", "_generated_test_Ice_objects_Test_D_t"]
