# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.PBaseSeq import _Test_PBaseSeq_t

from Test.PCDerived_forward import _Test_PCDerived_t

from Test.PDerived import PDerived

from Test.PDerived_forward import _Test_PDerived_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.PBase import PBase

@dataclass(eq=False)
class PCDerived(PDerived):
    pbs: list[PBase | None] = field(default_factory=list)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::PCDerived"

_Test_PCDerived_t = IcePy.defineValue(
    "::Test::PCDerived",
    PCDerived,
    -1,
    (),
    False,
    _Test_PDerived_t,
    (("pbs", (), _Test_PBaseSeq_t, False, 0),))

setattr(PCDerived, '_ice_type', _Test_PCDerived_t)

__all__ = ["PCDerived", "_Test_PCDerived_t"]
