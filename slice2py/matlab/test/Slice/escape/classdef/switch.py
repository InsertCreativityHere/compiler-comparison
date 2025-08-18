# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from classdef.global import _classdef_global_t

_classdef_switch_t = IcePy.defineDictionary("::classdef::switch", (), IcePy._t_int, _classdef_global_t)

__all__ = ["_classdef_switch_t"]
