# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class ReapWouldBlock(UserException):
    """
    Thrown if the reap call would block.
    """

    _ice_id = "::IceStorm::ReapWouldBlock"

_IceStorm_ReapWouldBlock_t = IcePy.defineException(
    "::IceStorm::ReapWouldBlock",
    ReapWouldBlock,
    (),
    None,
    ())

setattr(ReapWouldBlock, '_ice_type', _IceStorm_ReapWouldBlock_t)

__all__ = ["ReapWouldBlock", "_IceStorm_ReapWouldBlock_t"]
