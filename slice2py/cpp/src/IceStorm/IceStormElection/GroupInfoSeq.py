# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from IceStormElection.GroupInfo import _IceStormElection_GroupInfo_t

_IceStormElection_GroupInfoSeq_t = IcePy.defineSequence("::IceStormElection::GroupInfoSeq", (), _IceStormElection_GroupInfo_t)

__all__ = ["_IceStormElection_GroupInfoSeq_t"]
