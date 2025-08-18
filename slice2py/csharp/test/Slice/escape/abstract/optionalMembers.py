# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from abstract.as import _abstract_as_t
from abstract.as import as

from abstract.break import _abstract_break_t
from abstract.break import break

from abstract.explicit_forward import _abstract_explicitPrx_t

from abstract.optionalMembers_forward import _abstract_optionalMembers_t

from abstract.while import _abstract_while_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from abstract.explicit import explicitPrx

@dataclass(eq=False)
class optionalMembers(Value):
    for: break | None = None
    goto: as | None = None
    if: explicitPrx | None = None
    internal: dict[str, break] | None = None
    namespace: str | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::abstract::optionalMembers"

_abstract_optionalMembers_t = IcePy.defineValue(
    "::abstract::optionalMembers",
    optionalMembers,
    -1,
    (),
    False,
    None,
    (
        ("for", (), _abstract_break_t, True, 1),
        ("goto", (), _abstract_as_t, True, 2),
        ("if", (), _abstract_explicitPrx_t, True, 3),
        ("internal", (), _abstract_while_t, True, 5),
        ("namespace", (), IcePy._t_string, True, 7)
    ))

setattr(optionalMembers, '_ice_type', _abstract_optionalMembers_t)

__all__ = ["optionalMembers", "_abstract_optionalMembers_t"]
