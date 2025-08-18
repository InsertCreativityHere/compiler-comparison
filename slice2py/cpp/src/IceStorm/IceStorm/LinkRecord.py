# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from IceStorm.TopicLink_forward import _IceStorm_TopicLinkPrx_t

from IceStorm.Topic_forward import _IceStorm_TopicPrx_t

from dataclasses import dataclass

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from IceStorm.Topic import TopicPrx
    from IceStorm.TopicLink import TopicLinkPrx


@dataclass
class LinkRecord:
    """
    Used to store persistent information for Topic federation.
    
    Attributes
    ----------
    obj : TopicLinkPrx | None
        The topic link object.
    cost : int
        The cost.
    theTopic : TopicPrx | None
        The linked topic for getLinkInfoSeq
    """
    obj: TopicLinkPrx | None = None
    cost: int = 0
    theTopic: TopicPrx | None = None

_IceStorm_LinkRecord_t = IcePy.defineStruct(
    "::IceStorm::LinkRecord",
    LinkRecord,
    (),
    (
        ("obj", (), _IceStorm_TopicLinkPrx_t),
        ("cost", (), IcePy._t_int),
        ("theTopic", (), _IceStorm_TopicPrx_t)
    ))

__all__ = ["LinkRecord", "_IceStorm_LinkRecord_t"]
