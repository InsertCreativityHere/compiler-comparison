# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Test.BaseClass_forward import _Test_BaseClass_t

from Test.KnownPreservedDerived import KnownPreservedDerived
from Test.KnownPreservedDerived import _Test_KnownPreservedDerived_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Test.BaseClass import BaseClass


@dataclass
class Preserved1(KnownPreservedDerived):
    p1: BaseClass | None = None

    _ice_id = "::Test::Preserved1"

_Test_Preserved1_t = IcePy.defineException(
    "::Test::Preserved1",
    Preserved1,
    (),
    _Test_KnownPreservedDerived_t,
    (("p1", (), _Test_BaseClass_t, False, 0),))

setattr(Preserved1, '_ice_type', _Test_Preserved1_t)

__all__ = ["Preserved1", "_Test_Preserved1_t"]
