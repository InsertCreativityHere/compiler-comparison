# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from Test.Stock_forward import _Test_Stock_t

from dataclasses import dataclass

@dataclass(eq=False)
class Stock(Value):
    price: float = 0.0
    lastBid: float = 0.0
    lastAsk: float = 0.0

    @staticmethod
    def ice_staticId() -> str:
        return "::Test::Stock"

_Test_Stock_t = IcePy.defineValue(
    "::Test::Stock",
    Stock,
    -1,
    (),
    False,
    None,
    (
        ("price", (), IcePy._t_float, False, 0),
        ("lastBid", (), IcePy._t_float, False, 0),
        ("lastAsk", (), IcePy._t_float, False, 0)
    ))

setattr(Stock, '_ice_type', _Test_Stock_t)

__all__ = ["Stock", "_Test_Stock_t"]
