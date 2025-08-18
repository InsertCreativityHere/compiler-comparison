# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Slice.structure.Test.C_forward import _generated_test_Slice_structure_Test_C_t

@dataclass(eq=False)
class C(Value):
    name: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::C"

_generated_test_Slice_structure_Test_C_t = IcePy.defineValue(
    "::Test::C",
    C,
    -1,
    (),
    False,
    None,
    (("name", (), IcePy._t_string, False, 0),))

setattr(C, '_ice_type', _generated_test_Slice_structure_Test_C_t)

__all__ = ["C", "_generated_test_Slice_structure_Test_C_t"]
