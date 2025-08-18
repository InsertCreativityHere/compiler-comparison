# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.CompactPDerived_forward import _Test_CompactPDerived_t

from Test.PBase_forward import _Test_PBase_t

from Test.Preserved import Preserved

from Test.Preserved_forward import _Test_Preserved_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.PBase import PBase

@dataclass(eq=False)
class CompactPDerived(Preserved):
    pb: PBase | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::CompactPDerived"

_Test_CompactPDerived_t = IcePy.defineValue(
    "::Test::CompactPDerived",
    CompactPDerived,
    56,
    (),
    False,
    _Test_Preserved_t,
    (("pb", (), _Test_PBase_t, False, 0),))

setattr(CompactPDerived, '_ice_type', _Test_CompactPDerived_t)

__all__ = ["CompactPDerived", "_Test_CompactPDerived_t"]
