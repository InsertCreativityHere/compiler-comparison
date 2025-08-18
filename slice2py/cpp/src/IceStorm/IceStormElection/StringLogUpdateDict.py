# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from IceStormElection.LogUpdate import _IceStormElection_LogUpdate_t

_IceStormElection_StringLogUpdateDict_t = IcePy.defineDictionary("::IceStormElection::StringLogUpdateDict", (), IcePy._t_string, _IceStormElection_LogUpdate_t)

__all__ = ["_IceStormElection_StringLogUpdateDict_t"]
