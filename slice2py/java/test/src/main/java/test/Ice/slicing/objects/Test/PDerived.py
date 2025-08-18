# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.PBase_forward import _Test_PBase_t

from Test.PDerived_forward import _Test_PDerived_t

from Test.Preserved import Preserved

from Test.Preserved_forward import _Test_Preserved_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.PBase import PBase

@dataclass(eq=False)
class PDerived(Preserved):
    pb: PBase | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::PDerived"

_Test_PDerived_t = IcePy.defineValue(
    "::Test::PDerived",
    PDerived,
    -1,
    (),
    False,
    _Test_Preserved_t,
    (("pb", (), _Test_PBase_t, False, 0),))

setattr(PDerived, '_ice_type', _Test_PDerived_t)

__all__ = ["PDerived", "_Test_PDerived_t"]
