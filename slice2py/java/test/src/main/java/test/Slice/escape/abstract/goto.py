# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from abstract.assert import _abstract_assert_t

_abstract_goto_t = IcePy.defineDictionary("::abstract::goto", (), IcePy._t_string, _abstract_assert_t)

__all__ = ["_abstract_goto_t"]
