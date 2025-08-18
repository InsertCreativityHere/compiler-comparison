# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.OptionalWithCustom_forward import _Test_OptionalWithCustom_t

from Test.SmallStructList import _Test_SmallStructList_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.SmallStruct import SmallStruct

@dataclass(eq=False)
class OptionalWithCustom(Value):
    l: list[SmallStruct] | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::OptionalWithCustom"

_Test_OptionalWithCustom_t = IcePy.defineValue(
    "::Test::OptionalWithCustom",
    OptionalWithCustom,
    -1,
    (),
    False,
    None,
    (("l", (), _Test_SmallStructList_t, True, 1),))

setattr(OptionalWithCustom, '_ice_type', _Test_OptionalWithCustom_t)

__all__ = ["OptionalWithCustom", "_Test_OptionalWithCustom_t"]
