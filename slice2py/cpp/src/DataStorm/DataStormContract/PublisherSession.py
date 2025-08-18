# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStormContract.DataSamplesSeq import _DataStormContract_DataSamplesSeq_t

from DataStormContract.ElementInfoSeq import _DataStormContract_ElementInfoSeq_t

from DataStormContract.ElementSpecAckSeq import _DataStormContract_ElementSpecAckSeq_t

from DataStormContract.ElementSpecSeq import _DataStormContract_ElementSpecSeq_t

from DataStormContract.PublisherSession_forward import _DataStormContract_PublisherSessionPrx_t

from DataStormContract.Session import Session
from DataStormContract.Session import SessionPrx

from DataStormContract.TopicInfoSeq import _DataStormContract_TopicInfoSeq_t

from DataStormContract.TopicSpec import _DataStormContract_TopicSpec_t

from Ice.LongSeq import _Ice_LongSeq_t

from Ice.ObjectPrx import checkedCast
from Ice.ObjectPrx import checkedCastAsync
from Ice.ObjectPrx import uncheckedCast

from Ice.OperationMode import OperationMode

from abc import ABC
from abc import abstractmethod

from typing import TYPE_CHECKING
from typing import overload

if TYPE_CHECKING:
    from DataStormContract.DataSamples import DataSamples
    from DataStormContract.ElementInfo import ElementInfo
    from DataStormContract.ElementSpec import ElementSpec
    from DataStormContract.ElementSpecAck import ElementSpecAck
    from DataStormContract.TopicInfo import TopicInfo
    from DataStormContract.TopicSpec import TopicSpec
    from Ice.Current import Current
    from Ice.ObjectPrx import ObjectPrx
    from collections.abc import Awaitable
    from collections.abc import Sequence


class PublisherSessionPrx(SessionPrx):

    @staticmethod
    def checkedCast(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> PublisherSessionPrx | None:
        return checkedCast(PublisherSessionPrx, proxy, facet, context)

    @staticmethod
    def checkedCastAsync(
        proxy: ObjectPrx | None,
        facet: str | None = None,
        context: dict[str, str] | None = None
    ) -> Awaitable[PublisherSessionPrx | None ]:
        return checkedCastAsync(PublisherSessionPrx, proxy, facet, context)

    @overload
    @staticmethod
    def uncheckedCast(proxy: ObjectPrx, facet: str | None = None) -> PublisherSessionPrx:
        ...

    @overload
    @staticmethod
    def uncheckedCast(proxy: None, facet: str | None = None) -> None:
        ...

    @staticmethod
    def uncheckedCast(proxy: ObjectPrx | None, facet: str | None = None) -> PublisherSessionPrx | None:
        return uncheckedCast(PublisherSessionPrx, proxy, facet)

    @staticmethod
    def ice_staticId() -> str:
        return "::DataStormContract::PublisherSession"

IcePy.defineProxy("::DataStormContract::PublisherSession", PublisherSessionPrx)

class PublisherSession(Session, ABC):

    _ice_ids: Sequence[str] = ("::DataStormContract::PublisherSession", "::DataStormContract::Session", "::Ice::Object", )

    @staticmethod
    def ice_staticId() -> str:
        return "::DataStormContract::PublisherSession"

__all__ = ["PublisherSession", "PublisherSessionPrx", "_DataStormContract_PublisherSessionPrx_t"]
