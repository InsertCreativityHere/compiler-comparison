# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.IBase import IBase

from Test.IBase_forward import _Test_IBase_t

from Test.IDerived2_forward import _Test_IDerived2_t

from dataclasses import dataclass

@dataclass(eq=False)
class IDerived2(IBase):

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::IDerived2"

_Test_IDerived2_t = IcePy.defineValue(
    "::Test::IDerived2",
    IDerived2,
    -1,
    (),
    False,
    _Test_IBase_t,
    ())

setattr(IDerived2, '_ice_type', _Test_IDerived2_t)

__all__ = ["IDerived2", "_Test_IDerived2_t"]
