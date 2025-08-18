# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from import.return import _import_return_t
from import.return import return


@dataclass
class as(return):
    switch: int = 0

    _ice_id = "::import::as"

_import_as_t = IcePy.defineException(
    "::import::as",
    as,
    (),
    _import_return_t,
    (("switch", (), IcePy._t_int, False, 0),))

setattr(as, '_ice_type', _import_as_t)

__all__ = ["as", "_import_as_t"]
