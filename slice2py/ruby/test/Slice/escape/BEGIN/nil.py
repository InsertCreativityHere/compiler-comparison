# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from BEGIN.and import _BEGIN_and_t
from BEGIN.and import and

from BEGIN.next import _BEGIN_next_t
from BEGIN.next import next

from dataclasses import dataclass
from dataclasses import field


@dataclass
class nil(next):
    not: int = 0
    or: and = field(default_factory=and)

    _ice_id = "::BEGIN::nil"

_BEGIN_nil_t = IcePy.defineException(
    "::BEGIN::nil",
    nil,
    (),
    _BEGIN_next_t,
    (
        ("not", (), IcePy._t_int, False, 0),
        ("or", (), _BEGIN_and_t, False, 0)
    ))

setattr(nil, '_ice_type', _BEGIN_nil_t)

__all__ = ["nil", "_BEGIN_nil_t"]
