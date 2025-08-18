# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from abstract.break import _abstract_break_t

_abstract_while_t = IcePy.defineDictionary("::abstract::while", (), IcePy._t_string, _abstract_break_t)

__all__ = ["_abstract_while_t"]
