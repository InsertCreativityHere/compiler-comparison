# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from generated.test.Ice.optional.Test.OneOptional_forward import _generated_test_Ice_optional_Test_OneOptional_t

@dataclass(eq=False)
class OneOptional(Value):
    a: int | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::OneOptional"

_generated_test_Ice_optional_Test_OneOptional_t = IcePy.defineValue(
    "::Test::OneOptional",
    OneOptional,
    -1,
    (),
    False,
    None,
    (("a", (), IcePy._t_int, True, 1),))

setattr(OneOptional, '_ice_type', _generated_test_Ice_optional_Test_OneOptional_t)

__all__ = ["OneOptional", "_generated_test_Ice_optional_Test_OneOptional_t"]
