# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.slicing.objects.Test.PBase_forward import _generated_test_Ice_slicing_objects_Test_PBase_t

@dataclass(eq=False)
class PBase(Value):
    pi: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::PBase"

_generated_test_Ice_slicing_objects_Test_PBase_t = IcePy.defineValue(
    "::Test::PBase",
    PBase,
    -1,
    (),
    False,
    None,
    (("pi", (), IcePy._t_int, False, 0),))

setattr(PBase, '_ice_type', _generated_test_Ice_slicing_objects_Test_PBase_t)

__all__ = ["PBase", "_generated_test_Ice_slicing_objects_Test_PBase_t"]
