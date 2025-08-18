# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from classdef.global import _classdef_global_t

_classdef_parfor_t = IcePy.defineSequence("::classdef::parfor", (), _classdef_global_t)

__all__ = ["_classdef_parfor_t"]
