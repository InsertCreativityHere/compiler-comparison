# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.objects.Test.AlsoEmpty_forward import _generated_test_Ice_objects_Test_AlsoEmpty_t

@dataclass(eq=False)
class AlsoEmpty(Value):

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::AlsoEmpty"

_generated_test_Ice_objects_Test_AlsoEmpty_t = IcePy.defineValue(
    "::Test::AlsoEmpty",
    AlsoEmpty,
    -1,
    (),
    False,
    None,
    ())

setattr(AlsoEmpty, '_ice_type', _generated_test_Ice_objects_Test_AlsoEmpty_t)

__all__ = ["AlsoEmpty", "_generated_test_Ice_objects_Test_AlsoEmpty_t"]
