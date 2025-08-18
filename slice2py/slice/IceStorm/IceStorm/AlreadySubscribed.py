# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class AlreadySubscribed(UserException):
    """
    The exception that is thrown when attempting to subscribe a proxy for which a subscription already exists.
    """

    _ice_id = "::IceStorm::AlreadySubscribed"

_IceStorm_AlreadySubscribed_t = IcePy.defineException(
    "::IceStorm::AlreadySubscribed",
    AlreadySubscribed,
    (),
    None,
    ())

setattr(AlreadySubscribed, '_ice_type', _IceStorm_AlreadySubscribed_t)

__all__ = ["AlreadySubscribed", "_IceStorm_AlreadySubscribed_t"]
