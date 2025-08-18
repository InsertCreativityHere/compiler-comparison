# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class AdapterExistsException(UserException):
    """
    This exception is raised if an adapter with the same name already exists.
    """
    id: str = ""

    _ice_id = "::IceGrid::AdapterExistsException"

_IceGrid_AdapterExistsException_t = IcePy.defineException(
    "::IceGrid::AdapterExistsException",
    AdapterExistsException,
    (),
    None,
    (("id", (), IcePy._t_string, False, 0),))

setattr(AdapterExistsException, '_ice_type', _IceGrid_AdapterExistsException_t)

__all__ = ["AdapterExistsException", "_IceGrid_AdapterExistsException_t"]
