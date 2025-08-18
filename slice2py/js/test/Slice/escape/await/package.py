# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from await.break import _await_break_t
from await.break import break

from await.explicit_forward import _await_explicitPrx_t

from await.package_forward import _await_package_t

from await.var import _await_var_t
from await.var import var

from await.while import _await_while_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from await.explicit import explicitPrx

@dataclass(eq=False)
class package(Value):
    for: break | None = None
    goto: var | None = None
    null: explicitPrx | None = None
    internal: dict[str, break] | None = None
    debugger: str | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::await::package"

_await_package_t = IcePy.defineValue(
    "::await::package",
    package,
    -1,
    (),
    False,
    None,
    (
        ("for", (), _await_break_t, True, 1),
        ("goto", (), _await_var_t, True, 2),
        ("null", (), _await_explicitPrx_t, True, 3),
        ("internal", (), _await_while_t, True, 5),
        ("debugger", (), IcePy._t_string, True, 7)
    ))

setattr(package, '_ice_type', _await_package_t)

__all__ = ["package", "_await_package_t"]
