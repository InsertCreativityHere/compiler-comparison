# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.objects.Test.Empty_forward import _generated_test_Ice_objects_Test_Empty_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.objects.Test.Empty import Empty


@dataclass
class SOneMember:
    e: Empty | None = None

_generated_test_Ice_objects_Test_SOneMember_t = IcePy.defineStruct(
    "::Test::SOneMember",
    SOneMember,
    (),
    (("e", (), _generated_test_Ice_objects_Test_Empty_t),))

__all__ = ["SOneMember", "_generated_test_Ice_objects_Test_SOneMember_t"]
