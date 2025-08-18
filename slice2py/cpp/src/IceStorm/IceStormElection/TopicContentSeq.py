# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from IceStormElection.TopicContent import _IceStormElection_TopicContent_t

_IceStormElection_TopicContentSeq_t = IcePy.defineSequence("::IceStormElection::TopicContentSeq", (), _IceStormElection_TopicContent_t)

__all__ = ["_IceStormElection_TopicContentSeq_t"]
