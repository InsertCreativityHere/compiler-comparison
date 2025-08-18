# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from dataclasses import dataclass

from import.break_forward import _import_breakPrx_t

from import.switch_forward import _import_switch_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from import.break import breakPrx

@dataclass(eq=False)
class switch(Value):
    export: breakPrx | None = None
    volatile: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::import::switch"

_import_switch_t = IcePy.defineValue(
    "::import::switch",
    switch,
    -1,
    (),
    False,
    None,
    (
        ("export", (), _import_breakPrx_t, False, 0),
        ("volatile", (), IcePy._t_int, False, 0)
    ))

setattr(switch, '_ice_type', _import_switch_t)

__all__ = ["switch", "_import_switch_t"]
