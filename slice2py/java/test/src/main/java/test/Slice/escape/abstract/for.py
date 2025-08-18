# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from abstract.assert import _abstract_assert_t

_abstract_for_t = IcePy.defineSequence("::abstract::for", (), _abstract_assert_t)

__all__ = ["_abstract_for_t"]
