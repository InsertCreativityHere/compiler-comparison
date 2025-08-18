# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.BaseClass_forward import _Test_BaseClass_t

from Test.Preserved1 import Preserved1
from Test.Preserved1 import _Test_Preserved1_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.BaseClass import BaseClass


@dataclass
class Preserved2(Preserved1):
    p2: BaseClass | None = None

    _ice_id = "::Test::Preserved2"

_Test_Preserved2_t = IcePy.defineException(
    "::Test::Preserved2",
    Preserved2,
    (),
    _Test_Preserved1_t,
    (("p2", (), _Test_BaseClass_t, False, 0),))

setattr(Preserved2, '_ice_type', _Test_Preserved2_t)

__all__ = ["Preserved2", "_Test_Preserved2_t"]
