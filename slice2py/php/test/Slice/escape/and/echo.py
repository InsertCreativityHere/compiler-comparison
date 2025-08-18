# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from and.die_forward import _and_diePrx_t

from and.echo_forward import _and_echo_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from and.die import diePrx

@dataclass(eq=False)
class echo(Value):
    if: int = 0
    empty: diePrx | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::and::echo"

_and_echo_t = IcePy.defineValue(
    "::and::echo",
    echo,
    -1,
    (),
    False,
    None,
    (
        ("if", (), IcePy._t_int, False, 0),
        ("empty", (), _and_diePrx_t, False, 0)
    ))

setattr(echo, '_ice_type', _and_echo_t)

__all__ = ["echo", "_and_echo_t"]
