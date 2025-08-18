# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value_forward import _Ice_Value_t

from Test.PCDerived2 import PCDerived2

from Test.PCDerived2_forward import _Test_PCDerived2_t

from Test.PCDerived3_forward import _Test_PCDerived3_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Ice.Value import Value

@dataclass(eq=False)
class PCDerived3(PCDerived2):
    pcd3: Value | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::PCDerived3"

_Test_PCDerived3_t = IcePy.defineValue(
    "::Test::PCDerived3",
    PCDerived3,
    -1,
    (),
    False,
    _Test_PCDerived2_t,
    (("pcd3", (), _Ice_Value_t, False, 0),))

setattr(PCDerived3, '_ice_type', _Test_PCDerived3_t)

__all__ = ["PCDerived3", "_Test_PCDerived3_t"]
