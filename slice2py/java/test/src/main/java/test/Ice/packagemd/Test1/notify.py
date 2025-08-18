# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class notify(UserException):
    i: int = 0

    _ice_id = "::Test1::notify"

_Test1_notify_t = IcePy.defineException(
    "::Test1::notify",
    notify,
    (),
    None,
    (("i", (), IcePy._t_int, False, 0),))

setattr(notify, '_ice_type', _Test1_notify_t)

__all__ = ["notify", "_Test1_notify_t"]
