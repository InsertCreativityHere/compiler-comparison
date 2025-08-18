# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from Ice.ObjectPrx_forward import _Ice_ObjectPrx_t

from dataclasses import dataclass
from dataclasses import field

from generated.test.Slice.structure.Test.C_forward import _generated_test_Slice_structure_Test_C_t

from generated.test.Slice.structure.Test.StringDict import _generated_test_Slice_structure_Test_StringDict_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from Ice.ObjectPrx import ObjectPrx
    from generated.test.Slice.structure.Test.C import C


@dataclass
class S3:
    obj: C | None = None
    sd: dict[str, str] = field(default_factory=dict)
    prx: ObjectPrx | None = None

_generated_test_Slice_structure_Test_S3_t = IcePy.defineStruct(
    "::Test::S3",
    S3,
    (),
    (
        ("obj", (), _generated_test_Slice_structure_Test_C_t),
        ("sd", (), _generated_test_Slice_structure_Test_StringDict_t),
        ("prx", (), _Ice_ObjectPrx_t)
    ))

__all__ = ["S3", "_generated_test_Slice_structure_Test_S3_t"]
