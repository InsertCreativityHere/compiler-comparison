# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class ArgumentException(UserException):

    _ice_id = "::Core::ArgumentException"

_Core_ArgumentException_t = IcePy.defineException(
    "::Core::ArgumentException",
    ArgumentException,
    (),
    None,
    ())

setattr(ArgumentException, '_ice_type', _Core_ArgumentException_t)

__all__ = ["ArgumentException", "_Core_ArgumentException_t"]
