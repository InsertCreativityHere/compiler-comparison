# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class ServerUnreachableException(UserException):
    """
    The exception that is thrown when IceGrid cannot reach a server.
    
    Attributes
    ----------
    name : str
        The id of the server that is not reachable.
    reason : str
        The reason why the server couldn't be reached.
    """
    name: str = ""
    reason: str = ""

    _ice_id = "::IceGrid::ServerUnreachableException"

_IceGrid_ServerUnreachableException_t = IcePy.defineException(
    "::IceGrid::ServerUnreachableException",
    ServerUnreachableException,
    (),
    None,
    (
        ("name", (), IcePy._t_string, False, 0),
        ("reason", (), IcePy._t_string, False, 0)
    ))

setattr(ServerUnreachableException, '_ice_type', _IceGrid_ServerUnreachableException_t)

__all__ = ["ServerUnreachableException", "_IceGrid_ServerUnreachableException_t"]
