# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.CR_forward import _Test_CR_t

from Test.CV_forward import _Test_CV_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.CV import CV

@dataclass(eq=False)
class CR(Value):
    v: CV | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::CR"

_Test_CR_t = IcePy.defineValue(
    "::Test::CR",
    CR,
    -1,
    (),
    False,
    None,
    (("v", (), _Test_CV_t, False, 0),))

setattr(CR, '_ice_type', _Test_CR_t)

__all__ = ["CR", "_Test_CR_t"]
