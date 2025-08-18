# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.UserException import UserException

from dataclasses import dataclass


@dataclass
class ProcessFailedException(UserException):
    reason: str = ""

    _ice_id = "::Test::Common::ProcessFailedException"

_Test_Common_ProcessFailedException_t = IcePy.defineException(
    "::Test::Common::ProcessFailedException",
    ProcessFailedException,
    (),
    None,
    (("reason", (), IcePy._t_string, False, 0),))

setattr(ProcessFailedException, '_ice_type', _Test_Common_ProcessFailedException_t)

__all__ = ["ProcessFailedException", "_Test_Common_ProcessFailedException_t"]
