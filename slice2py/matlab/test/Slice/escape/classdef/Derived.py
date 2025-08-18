# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from classdef.Base import Base

from classdef.Base_forward import _classdef_Base_t

from classdef.Derived_forward import _classdef_Derived_t

from classdef.parfor import _classdef_parfor_t

from classdef.switch import _classdef_switch_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from classdef.global import global

@dataclass(eq=False)
class Derived(Base):
    if: int = 2
    spmd: list[global] = field(default_factory=list)
    otherwise: dict[int, global] = field(default_factory=dict)

    @staticmethod
    def ice_staticId() -> str:
        return "::classdef::Derived"

_classdef_Derived_t = IcePy.defineValue(
    "::classdef::Derived",
    Derived,
    -1,
    (),
    False,
    _classdef_Base_t,
    (
        ("if", (), IcePy._t_int, False, 0),
        ("spmd", (), _classdef_parfor_t, False, 0),
        ("otherwise", (), _classdef_switch_t, False, 0)
    ))

setattr(Derived, '_ice_type', _classdef_Derived_t)

__all__ = ["Derived", "_classdef_Derived_t"]
