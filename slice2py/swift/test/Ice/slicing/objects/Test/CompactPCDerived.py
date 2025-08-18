# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.CompactPCDerived_forward import _Test_CompactPCDerived_t

from Test.CompactPDerived import CompactPDerived

from Test.CompactPDerived_forward import _Test_CompactPDerived_t

from Test.PBaseSeq import _Test_PBaseSeq_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.PBase import PBase

@dataclass(eq=False)
class CompactPCDerived(CompactPDerived):
    pbs: list[PBase | None] = field(default_factory=list)

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::CompactPCDerived"

_Test_CompactPCDerived_t = IcePy.defineValue(
    "::Test::CompactPCDerived",
    CompactPCDerived,
    57,
    (),
    False,
    _Test_CompactPDerived_t,
    (("pbs", (), _Test_PBaseSeq_t, False, 0),))

setattr(CompactPCDerived, '_ice_type', _Test_CompactPCDerived_t)

__all__ = ["CompactPCDerived", "_Test_CompactPCDerived_t"]
