# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class FileNotAvailableException(UserException):
    """
    The exception that is thrown when a log file is not available.
    
    Attributes
    ----------
    reason : str
        The reason for the failure.
    """
    reason: str = ""

    _ice_id = "::IceGrid::FileNotAvailableException"

_IceGrid_FileNotAvailableException_t = IcePy.defineException(
    "::IceGrid::FileNotAvailableException",
    FileNotAvailableException,
    (),
    None,
    (("reason", (), IcePy._t_string, False, 0),))

setattr(FileNotAvailableException, '_ice_type', _IceGrid_FileNotAvailableException_t)

__all__ = ["FileNotAvailableException", "_IceGrid_FileNotAvailableException_t"]
