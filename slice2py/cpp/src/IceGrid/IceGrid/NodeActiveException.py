# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class NodeActiveException(UserException):
    """
    This exception is raised if a node is already registered and active.
    """

    _ice_id = "::IceGrid::NodeActiveException"

_IceGrid_NodeActiveException_t = IcePy.defineException(
    "::IceGrid::NodeActiveException",
    NodeActiveException,
    (),
    None,
    ())

setattr(NodeActiveException, '_ice_type', _IceGrid_NodeActiveException_t)

__all__ = ["NodeActiveException", "_IceGrid_NodeActiveException_t"]
