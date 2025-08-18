# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.objects.Test.F1_forward import _generated_test_Ice_objects_Test_F1_t

@dataclass(eq=False)
class F1(Value):
    name: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::F1"

_generated_test_Ice_objects_Test_F1_t = IcePy.defineValue(
    "::Test::F1",
    F1,
    -1,
    (),
    False,
    None,
    (("name", (), IcePy._t_string, False, 0),))

setattr(F1, '_ice_type', _generated_test_Ice_objects_Test_F1_t)

__all__ = ["F1", "_generated_test_Ice_objects_Test_F1_t"]
