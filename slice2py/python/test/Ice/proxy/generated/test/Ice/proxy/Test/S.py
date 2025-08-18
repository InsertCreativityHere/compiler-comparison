# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from __future__ import annotations
import IcePy

from dataclasses import dataclass

from generated.test.Ice.proxy.Test.A_forward import _generated_test_Ice_proxy_Test_APrx_t

from generated.test.Ice.proxy.Test.B_forward import _generated_test_Ice_proxy_Test_BPrx_t

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from generated.test.Ice.proxy.Test.A import APrx
    from generated.test.Ice.proxy.Test.B import BPrx


@dataclass
class S:
    a: APrx | None = None
    b: BPrx | None = None

_generated_test_Ice_proxy_Test_S_t = IcePy.defineStruct(
    "::Test::S",
    S,
    (),
    (
        ("a", (), _generated_test_Ice_proxy_Test_APrx_t),
        ("b", (), _generated_test_Ice_proxy_Test_BPrx_t)
    ))

__all__ = ["S", "_generated_test_Ice_proxy_Test_S_t"]
