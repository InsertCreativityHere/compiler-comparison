# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class NoSuchLink(UserException):
    """
    The exception that is thrown when attempting to remove a link that does not exist.
    
    Attributes
    ----------
    name : str
        The name of the link that does not exist.
    """
    name: str = ""

    _ice_id = "::IceStorm::NoSuchLink"

_IceStorm_NoSuchLink_t = IcePy.defineException(
    "::IceStorm::NoSuchLink",
    NoSuchLink,
    (),
    None,
    (("name", (), IcePy._t_string, False, 0),))

setattr(NoSuchLink, '_ice_type', _IceStorm_NoSuchLink_t)

__all__ = ["NoSuchLink", "_IceStorm_NoSuchLink_t"]
