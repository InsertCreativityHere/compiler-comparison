# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.slicing.objects.Test.SBase_forward import _generated_test_Ice_slicing_objects_Test_SBase_t

@dataclass(eq=False)
class SBase(Value):
    sb: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::SBase"

_generated_test_Ice_slicing_objects_Test_SBase_t = IcePy.defineValue(
    "::Test::SBase",
    SBase,
    -1,
    (),
    False,
    None,
    (("sb", (), IcePy._t_string, False, 0),))

setattr(SBase, '_ice_type', _generated_test_Ice_slicing_objects_Test_SBase_t)

__all__ = ["SBase", "_generated_test_Ice_slicing_objects_Test_SBase_t"]
