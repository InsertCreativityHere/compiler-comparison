# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class RegistryNotExistException(UserException):
    """
    The exception that is thrown when IceGrid does not know a registry with the provided name.
    
    Attributes
    ----------
    name : str
        The registry name.
    """
    name: str = ""

    _ice_id = "::IceGrid::RegistryNotExistException"

_IceGrid_RegistryNotExistException_t = IcePy.defineException(
    "::IceGrid::RegistryNotExistException",
    RegistryNotExistException,
    (),
    None,
    (("name", (), IcePy._t_string, False, 0),))

setattr(RegistryNotExistException, '_ice_type', _IceGrid_RegistryNotExistException_t)

__all__ = ["RegistryNotExistException", "_IceGrid_RegistryNotExistException_t"]
