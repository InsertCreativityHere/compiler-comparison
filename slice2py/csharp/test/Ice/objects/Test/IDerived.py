# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.IBase import IBase

from Test.IBase_forward import _Test_IBase_t

from Test.IDerived_forward import _Test_IDerived_t

from dataclasses import dataclass

@dataclass(eq=False)
class IDerived(IBase):
    name: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::IDerived"

_Test_IDerived_t = IcePy.defineValue(
    "::Test::IDerived",
    IDerived,
    -1,
    (),
    False,
    _Test_IBase_t,
    (("name", (), IcePy._t_string, False, 0),))

setattr(IDerived, '_ice_type', _Test_IDerived_t)

__all__ = ["IDerived", "_Test_IDerived_t"]
