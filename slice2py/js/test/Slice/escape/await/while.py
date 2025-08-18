# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from await.break import _await_break_t

_await_while_t = IcePy.defineDictionary("::await::while", (), IcePy._t_string, _await_break_t)

__all__ = ["_await_while_t"]
