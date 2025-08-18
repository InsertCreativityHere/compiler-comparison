# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class ReplicaActiveException(UserException):
    """
    This exception is raised if a replica is already registered and active.
    """

    _ice_id = "::IceGrid::ReplicaActiveException"

_IceGrid_ReplicaActiveException_t = IcePy.defineException(
    "::IceGrid::ReplicaActiveException",
    ReplicaActiveException,
    (),
    None,
    ())

setattr(ReplicaActiveException, '_ice_type', _IceGrid_ReplicaActiveException_t)

__all__ = ["ReplicaActiveException", "_IceGrid_ReplicaActiveException_t"]
