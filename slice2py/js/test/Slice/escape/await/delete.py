# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from await.case_forward import _await_casePrx_t

from await.delete_forward import _await_delete_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from await.case import casePrx

@dataclass(eq=False)
class delete(Value):
    else: casePrx | None = None
    export: int = 0
    clone: str = ""

    @staticmethod
    def ice_staticId() -> str:
        return "::await::delete"

_await_delete_t = IcePy.defineValue(
    "::await::delete",
    delete,
    -1,
    (),
    False,
    None,
    (
        ("else", (), _await_casePrx_t, False, 0),
        ("export", (), IcePy._t_int, False, 0),
        ("clone", (), IcePy._t_string, False, 0)
    ))

setattr(delete, '_ice_type', _await_delete_t)

__all__ = ["delete", "_await_delete_t"]
