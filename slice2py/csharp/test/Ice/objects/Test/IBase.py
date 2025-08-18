# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.IBase_forward import _Test_IBase_t

from dataclasses import dataclass

@dataclass(eq=False)
class IBase(Value):
    id: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::IBase"

_Test_IBase_t = IcePy.defineValue(
    "::Test::IBase",
    IBase,
    -1,
    (),
    False,
    None,
    (("id", (), IcePy._t_string, False, 0),))

setattr(IBase, '_ice_type', _Test_IBase_t)

__all__ = ["IBase", "_Test_IBase_t"]
