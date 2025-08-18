# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.A1_forward import _Test_A1_t

from Test.EBase import EBase
from Test.EBase import _Test_EBase_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.A1 import A1


@dataclass
class EDerived(EBase):
    a3: A1 | None = None
    a4: A1 | None = None

    _ice_id = "::Test::EDerived"

_Test_EDerived_t = IcePy.defineException(
    "::Test::EDerived",
    EDerived,
    (),
    _Test_EBase_t,
    (
        ("a3", (), _Test_A1_t, False, 0),
        ("a4", (), _Test_A1_t, False, 0)
    ))

setattr(EDerived, '_ice_type', _Test_EDerived_t)

__all__ = ["EDerived", "_Test_EDerived_t"]
