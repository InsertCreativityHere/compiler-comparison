# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Ice.Value_forward import _Ice_Value_t

from dataclasses import dataclass

from generated.test.Ice.objects.Test.K_forward import _generated_test_Ice_objects_Test_K_t

from typing import TYPE_CHECKING

@dataclass(eq=False)
class K(Value):
    value: Value | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::K"

_generated_test_Ice_objects_Test_K_t = IcePy.defineValue(
    "::Test::K",
    K,
    -1,
    (),
    False,
    None,
    (("value", (), _Ice_Value_t, False, 0),))

setattr(K, '_ice_type', _generated_test_Ice_objects_Test_K_t)

__all__ = ["K", "_generated_test_Ice_objects_Test_K_t"]
