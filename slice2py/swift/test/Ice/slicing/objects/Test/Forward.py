# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.Forward_forward import _Test_Forward_t

from Test.Hidden_forward import _Test_Hidden_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.Hidden import Hidden

@dataclass(eq=False)
class Forward(Value):
    h: Hidden | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Forward"

_Test_Forward_t = IcePy.defineValue(
    "::Test::Forward",
    Forward,
    -1,
    (),
    False,
    None,
    (("h", (), _Test_Hidden_t, False, 0),))

setattr(Forward, '_ice_type', _Test_Forward_t)

__all__ = ["Forward", "_Test_Forward_t"]
