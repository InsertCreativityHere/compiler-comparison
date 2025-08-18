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
    from Test.Forward import Forward

@dataclass(eq=False)
class Hidden(Value):
    f: Forward | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Hidden"

_Test_Hidden_t = IcePy.defineValue(
    "::Test::Hidden",
    Hidden,
    -1,
    (),
    False,
    None,
    (("f", (), _Test_Forward_t, False, 0),))

setattr(Hidden, '_ice_type', _Test_Hidden_t)

__all__ = ["Hidden", "_Test_Hidden_t"]
