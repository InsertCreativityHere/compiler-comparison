# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx_forward import _Ice_ObjectPrx_t

from Test.Base import Base

from Test.Base_forward import _Test_Base_t

from Test.Derived_forward import _Test_Derived_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Ice.ObjectPrx import ObjectPrx

@dataclass(eq=False)
class Derived(Base):
    p: ObjectPrx | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Derived"

_Test_Derived_t = IcePy.defineValue(
    "::Test::Derived",
    Derived,
    -1,
    (),
    False,
    _Test_Base_t,
    (("p", (), _Ice_ObjectPrx_t, False, 0),))

setattr(Derived, '_ice_type', _Test_Derived_t)

__all__ = ["Derived", "_Test_Derived_t"]
