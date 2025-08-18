# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from classdef.persistent import _classdef_persistent_t
from classdef.persistent import persistent

from dataclasses import dataclass


@dataclass(order=True, unsafe_hash=True)
class global:
    case: persistent = persistent.catch
    continue: int = 1
    eq: int = 2

_classdef_global_t = IcePy.defineStruct(
    "::classdef::global",
    global,
    (),
    (
        ("case", (), _classdef_persistent_t),
        ("continue", (), IcePy._t_int),
        ("eq", (), IcePy._t_int)
    ))

__all__ = ["global", "_classdef_global_t"]
