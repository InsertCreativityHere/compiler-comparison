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
class STwoMembers:
    e1: Empty | None = None
    e2: Empty | None = None

_generated_test_Ice_objects_Test_STwoMembers_t = IcePy.defineStruct(
    "::Test::STwoMembers",
    STwoMembers,
    (),
    (
        ("e1", (), _generated_test_Ice_objects_Test_Empty_t),
        ("e2", (), _generated_test_Ice_objects_Test_Empty_t)
    ))

__all__ = ["STwoMembers", "_generated_test_Ice_objects_Test_STwoMembers_t"]
