# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.objects.Test.Inner.A_forward import _generated_test_Ice_objects_Test_Inner_A_t

from generated.test.Ice.objects.Test.Inner.Sub.A_forward import _generated_test_Ice_objects_Test_Inner_Sub_A_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.objects.Test.Inner.A import A as _m_generated_test_Ice_objects_Test_Inner_A_A

@dataclass(eq=False)
class A(Value):
    theA: _m_generated_test_Ice_objects_Test_Inner_A_A | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Inner::Sub::A"

_generated_test_Ice_objects_Test_Inner_Sub_A_t = IcePy.defineValue(
    "::Test::Inner::Sub::A",
    A,
    -1,
    (),
    False,
    None,
    (("theA", (), _generated_test_Ice_objects_Test_Inner_A_t, False, 0),))

setattr(A, '_ice_type', _generated_test_Ice_objects_Test_Inner_Sub_A_t)

__all__ = ["A", "_generated_test_Ice_objects_Test_Inner_Sub_A_t"]
