# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class AdapterNotExistException(UserException):
    """
    The exception that is thrown when IceGrid does not know an object adapter with the provided adapter ID.
    
    Attributes
    ----------
    id : str
        The adapter ID.
    """
    id: str = ""

    _ice_id = "::IceGrid::AdapterNotExistException"

_IceGrid_AdapterNotExistException_t = IcePy.defineException(
    "::IceGrid::AdapterNotExistException",
    AdapterNotExistException,
    (),
    None,
    (("id", (), IcePy._t_string, False, 0),))

setattr(AdapterNotExistException, '_ice_type', _IceGrid_AdapterNotExistException_t)

__all__ = ["AdapterNotExistException", "_IceGrid_AdapterNotExistException_t"]
