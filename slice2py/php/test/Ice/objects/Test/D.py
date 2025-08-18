# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.A_forward import _Test_A_t

from Test.B_forward import _Test_B_t

from Test.C_forward import _Test_C_t

from Test.D_forward import _Test_D_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.A import A
    from Test.B import B
    from Test.C import C

@dataclass(eq=False)
class D(Value):
    theA: A | None = None
    theB: B | None = None
    theC: C | None = None
    preMarshalInvoked: bool = False
    postUnmarshalInvoked: bool = False

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::D"

_Test_D_t = IcePy.defineValue(
    "::Test::D",
    D,
    -1,
    (),
    False,
    None,
    (
        ("theA", (), _Test_A_t, False, 0),
        ("theB", (), _Test_B_t, False, 0),
        ("theC", (), _Test_C_t, False, 0),
        ("preMarshalInvoked", (), IcePy._t_bool, False, 0),
        ("postUnmarshalInvoked", (), IcePy._t_bool, False, 0)
    ))

setattr(D, '_ice_type', _Test_D_t)

__all__ = ["D", "_Test_D_t"]
