# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class AdapterNotActiveException(UserException):
    activatable: bool = False

    _ice_id = "::IceGrid::AdapterNotActiveException"

_IceGrid_AdapterNotActiveException_t = IcePy.defineException(
    "::IceGrid::AdapterNotActiveException",
    AdapterNotActiveException,
    (),
    None,
    (("activatable", (), IcePy._t_bool, False, 0),))

setattr(AdapterNotActiveException, '_ice_type', _IceGrid_AdapterNotActiveException_t)

__all__ = ["AdapterNotActiveException", "_IceGrid_AdapterNotActiveException_t"]
