# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from abstract.default_forward import _abstract_defaultPrx_t

from abstract.notify_forward import _abstract_notify_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from abstract.default import defaultPrx

@dataclass(eq=False)
class notify(Value):
    if: int = 0
    equals: defaultPrx | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::abstract::notify"

_abstract_notify_t = IcePy.defineValue(
    "::abstract::notify",
    notify,
    -1,
    (),
    False,
    None,
    (
        ("if", (), IcePy._t_int, False, 0),
        ("equals", (), _abstract_defaultPrx_t, False, 0)
    ))

setattr(notify, '_ice_type', _abstract_notify_t)

__all__ = ["notify", "_abstract_notify_t"]
