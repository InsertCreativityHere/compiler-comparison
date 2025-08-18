# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStormContract.SessionCreationError import SessionCreationError
from DataStormContract.SessionCreationError import _DataStormContract_SessionCreationError_t

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class SessionCreationException(UserException):
    """
    Throws when the session cannot be created.
    """
    error: SessionCreationError = SessionCreationError.AlreadyConnected

    _ice_id = "::DataStormContract::SessionCreationException"

_DataStormContract_SessionCreationException_t = IcePy.defineException(
    "::DataStormContract::SessionCreationException",
    SessionCreationException,
    (),
    None,
    (("error", (), _DataStormContract_SessionCreationError_t, False, 0),))

setattr(SessionCreationException, '_ice_type', _DataStormContract_SessionCreationException_t)

__all__ = ["SessionCreationException", "_DataStormContract_SessionCreationException_t"]
