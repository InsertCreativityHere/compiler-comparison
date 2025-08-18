
# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from .Echo import Echo
from .Echo import EchoPrx
from .Echo_forward import _Test_EchoPrx_t
from .MyObject import MyObject
from .MyObject import MyObjectPrx
from .MyObject_forward import _Test_MyObjectPrx_t


__all__ = [
    "Echo",
    "EchoPrx",
    "_Test_EchoPrx_t",
    "MyObject",
    "MyObjectPrx",
    "_Test_MyObjectPrx_t"
]
