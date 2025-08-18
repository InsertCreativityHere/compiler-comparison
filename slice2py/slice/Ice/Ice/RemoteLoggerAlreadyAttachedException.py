# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class RemoteLoggerAlreadyAttachedException(UserException):
    """
    Thrown when the provided RemoteLogger was previously attached to a LoggerAdmin.
    """

    _ice_id = "::Ice::RemoteLoggerAlreadyAttachedException"

_Ice_RemoteLoggerAlreadyAttachedException_t = IcePy.defineException(
    "::Ice::RemoteLoggerAlreadyAttachedException",
    RemoteLoggerAlreadyAttachedException,
    (),
    None,
    ())

setattr(RemoteLoggerAlreadyAttachedException, '_ice_type', _Ice_RemoteLoggerAlreadyAttachedException_t)

__all__ = ["RemoteLoggerAlreadyAttachedException", "_Ice_RemoteLoggerAlreadyAttachedException_t"]
