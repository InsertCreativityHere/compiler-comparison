# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.Value import Value

from classdef.global import _classdef_global_t
from classdef.global import global

from classdef.logical_forward import _classdef_logical_t

from classdef.persistent import _classdef_persistent_t
from classdef.persistent import persistent

from dataclasses import dataclass
from dataclasses import field

@dataclass(eq=False)
class logical(Value):
    else: persistent = persistent.break
    for: global = field(default_factory=global)
    int64: bool = True

    @staticmethod
    def ice_staticId() -> str:
        return "::classdef::logical"

_classdef_logical_t = IcePy.defineValue(
    "::classdef::logical",
    logical,
    -1,
    (),
    False,
    None,
    (
        ("else", (), _classdef_persistent_t, False, 0),
        ("for", (), _classdef_global_t, False, 0),
        ("int64", (), IcePy._t_bool, False, 0)
    ))

setattr(logical, '_ice_type', _classdef_logical_t)

__all__ = ["logical", "_classdef_logical_t"]
