# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from DataStormContract.DataSampleSeq import _DataStormContract_DataSampleSeq_t

from dataclasses import dataclass
from dataclasses import field

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from DataStormContract.DataSample import DataSample


@dataclass
class DataSamples:
    """
    Represents a collection of data samples produced by a specific writer.
    
    Attributes
    ----------
    id : int
        The unique identifier for the writer.
    samples : list[DataSample]
        The sequence of samples produced by the writer.
    """
    id: int = 0
    samples: list[DataSample] = field(default_factory=list)

_DataStormContract_DataSamples_t = IcePy.defineStruct(
    "::DataStormContract::DataSamples",
    DataSamples,
    (),
    (
        ("id", (), IcePy._t_long),
        ("samples", (), _DataStormContract_DataSampleSeq_t)
    ))

__all__ = ["DataSamples", "_DataStormContract_DataSamples_t"]
