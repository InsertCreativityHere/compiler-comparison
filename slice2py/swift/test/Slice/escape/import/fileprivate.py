# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from import.guard import _import_guard_t

_import_fileprivate_t = IcePy.defineSequence("::import::fileprivate", (), _import_guard_t)

__all__ = ["_import_fileprivate_t"]
