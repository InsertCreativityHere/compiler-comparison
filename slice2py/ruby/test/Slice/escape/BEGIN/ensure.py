# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from BEGIN.END import _BEGIN_END_t

_BEGIN_ensure_t = IcePy.defineDictionary("::BEGIN::ensure", (), IcePy._t_string, _BEGIN_END_t)

__all__ = ["_BEGIN_ensure_t"]
