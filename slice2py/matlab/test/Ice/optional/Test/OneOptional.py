# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.OneOptional_forward import _Test_OneOptional_t

from dataclasses import dataclass

@dataclass(eq=False)
class OneOptional(Value):
    a: int | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::OneOptional"

_Test_OneOptional_t = IcePy.defineValue(
    "::Test::OneOptional",
    OneOptional,
    -1,
    (),
    False,
    None,
    (("a", (), IcePy._t_int, True, 1),))

setattr(OneOptional, '_ice_type', _Test_OneOptional_t)

__all__ = ["OneOptional", "_Test_OneOptional_t"]
