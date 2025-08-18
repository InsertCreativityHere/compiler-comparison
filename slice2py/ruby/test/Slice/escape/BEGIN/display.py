# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from BEGIN.and import _BEGIN_and_t
from BEGIN.and import and

from BEGIN.break_forward import _BEGIN_breakPrx_t

from BEGIN.display_forward import _BEGIN_display_t

from Ice.Value import Value

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from BEGIN.break import breakPrx

@dataclass(eq=False)
class display(Value):
    when: and = field(default_factory=and)
    dup: breakPrx | None = None
    else: int = 0

    @staticmethod
    def ice_staticId() -> str:
        return "::BEGIN::display"

_BEGIN_display_t = IcePy.defineValue(
    "::BEGIN::display",
    display,
    -1,
    (),
    False,
    None,
    (
        ("when", (), _BEGIN_and_t, False, 0),
        ("dup", (), _BEGIN_breakPrx_t, False, 0),
        ("else", (), IcePy._t_int, False, 0)
    ))

setattr(display, '_ice_type', _BEGIN_display_t)

__all__ = ["display", "_BEGIN_display_t"]
