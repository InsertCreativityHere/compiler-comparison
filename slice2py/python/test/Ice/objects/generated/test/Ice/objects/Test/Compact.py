# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.objects.Test.Compact_forward import _generated_test_Ice_objects_Test_Compact_t

@dataclass(eq=False)
class Compact(Value):

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Compact"

_generated_test_Ice_objects_Test_Compact_t = IcePy.defineValue(
    "::Test::Compact",
    Compact,
    1,
    (),
    False,
    None,
    ())

setattr(Compact, '_ice_type', _generated_test_Ice_objects_Test_Compact_t)

__all__ = ["Compact", "_generated_test_Ice_objects_Test_Compact_t"]
