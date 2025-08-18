# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class AdapterActiveException(UserException):
    """
    This exception is raised if an adapter is active.
    """

    _ice_id = "::IceGrid::AdapterActiveException"

_IceGrid_AdapterActiveException_t = IcePy.defineException(
    "::IceGrid::AdapterActiveException",
    AdapterActiveException,
    (),
    None,
    ())

setattr(AdapterActiveException, '_ice_type', _IceGrid_AdapterActiveException_t)

__all__ = ["AdapterActiveException", "_IceGrid_AdapterActiveException_t"]
