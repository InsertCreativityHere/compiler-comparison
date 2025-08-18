# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class notify(UserException):
    i: int = 0

    _ice_id = "::NoNamespace::notify"

_NoNamespace_notify_t = IcePy.defineException(
    "::NoNamespace::notify",
    notify,
    (),
    None,
    (("i", (), IcePy._t_int, False, 0),))

setattr(notify, '_ice_type', _NoNamespace_notify_t)

__all__ = ["notify", "_NoNamespace_notify_t"]
