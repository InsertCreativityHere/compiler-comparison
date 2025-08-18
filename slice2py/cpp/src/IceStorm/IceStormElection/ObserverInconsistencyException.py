# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class ObserverInconsistencyException(UserException):
    """
    Thrown if an observer detects an inconsistency.
    
    Attributes
    ----------
    reason : str
        The reason for the inconsistency.
    """
    reason: str = ""

    _ice_id = "::IceStormElection::ObserverInconsistencyException"

_IceStormElection_ObserverInconsistencyException_t = IcePy.defineException(
    "::IceStormElection::ObserverInconsistencyException",
    ObserverInconsistencyException,
    (),
    None,
    (("reason", (), IcePy._t_string, False, 0),))

setattr(ObserverInconsistencyException, '_ice_type', _IceStormElection_ObserverInconsistencyException_t)

__all__ = ["ObserverInconsistencyException", "_IceStormElection_ObserverInconsistencyException_t"]
