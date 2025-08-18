# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from abstract.case_forward import _abstract_casePrx_t

from abstract.delegate_forward import _abstract_delegate_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from abstract.case import casePrx

@dataclass(eq=False)
class delegate(Value):
    if: int = 0
    else: casePrx | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::abstract::delegate"

_abstract_delegate_t = IcePy.defineValue(
    "::abstract::delegate",
    delegate,
    -1,
    (),
    False,
    None,
    (
        ("if", (), IcePy._t_int, False, 0),
        ("else", (), _abstract_casePrx_t, False, 0)
    ))

setattr(delegate, '_ice_type', _abstract_delegate_t)

__all__ = ["delegate", "_abstract_delegate_t"]
