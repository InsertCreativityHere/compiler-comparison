# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class NoSuchServiceException(UserException):
    """
    The exception that is thrown when a service name does not refer to a known service.
    """

    _ice_id = "::IceBox::NoSuchServiceException"

_IceBox_NoSuchServiceException_t = IcePy.defineException(
    "::IceBox::NoSuchServiceException",
    NoSuchServiceException,
    (),
    None,
    ())

setattr(NoSuchServiceException, '_ice_type', _IceBox_NoSuchServiceException_t)

__all__ = ["NoSuchServiceException", "_IceBox_NoSuchServiceException_t"]
