# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from NoNamespace.E1 import E1
from NoNamespace.E1 import _NoNamespace_E1_t

from dataclasses import dataclass


@dataclass
class E2(E1):
    l: int = 0

    _ice_id = "::NoNamespace::E2"

_NoNamespace_E2_t = IcePy.defineException(
    "::NoNamespace::E2",
    E2,
    (),
    _NoNamespace_E1_t,
    (("l", (), IcePy._t_long, False, 0),))

setattr(E2, '_ice_type', _NoNamespace_E2_t)

__all__ = ["E2", "_NoNamespace_E2_t"]
