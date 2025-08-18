# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.PCDerived import PCDerived

from Test.PCDerived2_forward import _Test_PCDerived2_t

from Test.PCDerived_forward import _Test_PCDerived_t

from dataclasses import dataclass

@dataclass(eq=False)
class PCDerived2(PCDerived):
    pcd2: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::PCDerived2"

_Test_PCDerived2_t = IcePy.defineValue(
    "::Test::PCDerived2",
    PCDerived2,
    -1,
    (),
    False,
    _Test_PCDerived_t,
    (("pcd2", (), IcePy._t_int, False, 0),))

setattr(PCDerived2, '_ice_type', _Test_PCDerived2_t)

__all__ = ["PCDerived2", "_Test_PCDerived2_t"]
