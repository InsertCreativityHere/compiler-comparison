# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Clash.Cls_forward import _Clash_Cls_t

from Clash.Intf_forward import _Clash_IntfPrx_t

from Ice.Value import Value

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Clash.Intf import IntfPrx

@dataclass(eq=False)
class Cls(Value):
    s: IntfPrx | None = None
    context: str = ""
    current: int = 0
    response: int = 0
    typeId: int = 0
    del: int = 0
    cookie: int | None = None
    ex: str = ""
    result: int = 0
    istr: str = ""
    ostr: str = ""
    inS: str = ""
    in: str = ""
    proxy: str = ""
    obj: int = 0
    getCookie: int = 0
    clone: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::Clash::Cls"

_Clash_Cls_t = IcePy.defineValue(
    "::Clash::Cls",
    Cls,
    -1,
    (),
    False,
    None,
    (
        ("s", (), _Clash_IntfPrx_t, False, 0),
        ("context", (), IcePy._t_string, False, 0),
        ("current", (), IcePy._t_int, False, 0),
        ("response", (), IcePy._t_short, False, 0),
        ("typeId", (), IcePy._t_int, False, 0),
        ("del", (), IcePy._t_short, False, 0),
        ("cookie", (), IcePy._t_short, True, 1),
        ("ex", (), IcePy._t_string, False, 0),
        ("result", (), IcePy._t_int, False, 0),
        ("istr", (), IcePy._t_string, False, 0),
        ("ostr", (), IcePy._t_string, False, 0),
        ("inS", (), IcePy._t_string, False, 0),
        ("in", (), IcePy._t_string, False, 0),
        ("proxy", (), IcePy._t_string, False, 0),
        ("obj", (), IcePy._t_int, False, 0),
        ("getCookie", (), IcePy._t_int, False, 0),
        ("clone", (), IcePy._t_string, False, 0)
    ))

setattr(Cls, '_ice_type', _Clash_Cls_t)

__all__ = ["Cls", "_Clash_Cls_t"]
