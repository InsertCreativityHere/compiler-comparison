# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class NoSuchTopic(UserException):
    """
    The exception that is thrown when attempting to retrieve a topic that does not exist.
    
    Attributes
    ----------
    name : str
        The name of the topic that does not exist.
    """
    name: str = ""

    _ice_id = "::IceStorm::NoSuchTopic"

_IceStorm_NoSuchTopic_t = IcePy.defineException(
    "::IceStorm::NoSuchTopic",
    NoSuchTopic,
    (),
    None,
    (("name", (), IcePy._t_string, False, 0),))

setattr(NoSuchTopic, '_ice_type', _IceStorm_NoSuchTopic_t)

__all__ = ["NoSuchTopic", "_IceStorm_NoSuchTopic_t"]
