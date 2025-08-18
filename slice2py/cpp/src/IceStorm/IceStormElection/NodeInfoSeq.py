# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from IceStormElection.NodeInfo import _IceStormElection_NodeInfo_t

_IceStormElection_NodeInfoSeq_t = IcePy.defineSequence("::IceStormElection::NodeInfoSeq", (), _IceStormElection_NodeInfo_t)

__all__ = ["_IceStormElection_NodeInfoSeq_t"]
