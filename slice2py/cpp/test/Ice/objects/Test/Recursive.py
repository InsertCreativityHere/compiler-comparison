# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.Recursive_forward import _Test_Recursive_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.Recursive import Recursive

@dataclass(eq=False)
class Recursive(Value):
    v: Recursive | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Recursive"

_Test_Recursive_t = IcePy.defineValue(
    "::Test::Recursive",
    Recursive,
    -1,
    (),
    False,
    None,
    (("v", (), _Test_Recursive_t, False, 0),))

setattr(Recursive, '_ice_type', _Test_Recursive_t)

__all__ = ["Recursive", "_Test_Recursive_t"]
