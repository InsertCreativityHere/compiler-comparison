# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from and.array import _and_array_t

_and_endforeach_t = IcePy.defineDictionary("::and::endforeach", (), IcePy._t_string, _and_array_t)

__all__ = ["_and_endforeach_t"]
