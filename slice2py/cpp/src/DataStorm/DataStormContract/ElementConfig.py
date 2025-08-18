# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStormContract.ClearHistoryPolicy import ClearHistoryPolicy
from DataStormContract.ClearHistoryPolicy import _DataStormContract_ClearHistoryPolicy_t

from DataStormContract.ElementConfig_forward import _DataStormContract_ElementConfig_t

from DataStormContract.FilterInfo import FilterInfo
from DataStormContract.FilterInfo import _DataStormContract_FilterInfo_t

from Ice.Value import Value

from dataclasses import dataclass

@dataclass(eq=False)
class ElementConfig(Value):
    """
    Represents the configuration of a data reader or data writer, including optional filters and priorities.
    
    Attributes
    ----------
    facet : str | None
        A facet that is used to process the samples when sample filtering is enabled.
    sampleFilter : FilterInfo | None
        An optional sample filter associated with the reader. Sample filters are specified on the reader side.
    name : str | None
        An optional name for the reader or writer.
    priority : int | None
        An optional priority for the writer.
        See also the `DataStorm.Topic.Priority` property.
    sampleCount : int | None
        An optional sample count, specifying the number of samples queued in the writer or reader sample queue.
        See also the `DataStorm.Topic.SampleCount` property.
    sampleLifetime : int | None
        An optional lifetime, specified in milliseconds, representing the maximum time samples are kept in the
        writer or reader sample queue. See also the `DataStorm.Topic.SampleLifetime` property.
    clearHistory : ClearHistoryPolicy | None
        An optional clear history policy that determines when the reader or writer sample history is cleared.
        See also the `DataStorm.Topic.ClearHistory` property.
    """
    facet: str | None = None
    sampleFilter: FilterInfo | None = None
    name: str | None = None
    priority: int | None = None
    sampleCount: int | None = None
    sampleLifetime: int | None = None
    clearHistory: ClearHistoryPolicy | None = None

    @staticmethod
    def ice_staticId() -> str:
        return "::DataStormContract::ElementConfig"

_DataStormContract_ElementConfig_t = IcePy.defineValue(
    "::DataStormContract::ElementConfig",
    ElementConfig,
    1,
    (),
    False,
    None,
    (
        ("facet", (), IcePy._t_string, True, 1),
        ("sampleFilter", (), _DataStormContract_FilterInfo_t, True, 2),
        ("name", (), IcePy._t_string, True, 3),
        ("priority", (), IcePy._t_int, True, 4),
        ("sampleCount", (), IcePy._t_int, True, 10),
        ("sampleLifetime", (), IcePy._t_int, True, 11),
        ("clearHistory", (), _DataStormContract_ClearHistoryPolicy_t, True, 12)
    ))

setattr(ElementConfig, '_ice_type', _DataStormContract_ElementConfig_t)

__all__ = ["ElementConfig", "_DataStormContract_ElementConfig_t"]
