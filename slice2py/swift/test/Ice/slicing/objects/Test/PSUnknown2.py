# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.PBase_forward import _Test_PBase_t

from Test.PSUnknown2_forward import _Test_PSUnknown2_t

from Test.Preserved import Preserved

from Test.Preserved_forward import _Test_Preserved_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.PBase import PBase

@dataclass(eq=False)
class PSUnknown2(Preserved):
    pb: PBase | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::PSUnknown2"

_Test_PSUnknown2_t = IcePy.defineValue(
    "::Test::PSUnknown2",
    PSUnknown2,
    -1,
    (),
    False,
    _Test_Preserved_t,
    (("pb", (), _Test_PBase_t, False, 0),))

setattr(PSUnknown2, '_ice_type', _Test_PSUnknown2_t)

__all__ = ["PSUnknown2", "_Test_PSUnknown2_t"]
