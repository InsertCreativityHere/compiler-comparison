# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.objects.Test.Recursive_forward import _generated_test_Ice_objects_Test_Recursive_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.objects.Test.Recursive import Recursive

@dataclass(eq=False)
class Recursive(Value):
    v: Recursive | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Recursive"

_generated_test_Ice_objects_Test_Recursive_t = IcePy.defineValue(
    "::Test::Recursive",
    Recursive,
    -1,
    (),
    False,
    None,
    (("v", (), _generated_test_Ice_objects_Test_Recursive_t, False, 0),))

setattr(Recursive, '_ice_type', _generated_test_Ice_objects_Test_Recursive_t)

__all__ = ["Recursive", "_generated_test_Ice_objects_Test_Recursive_t"]
