
# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from .MyInterface import MyInterface
from .MyInterface import MyInterfacePrx
from .MyInterface_forward import _Test_MyInterfacePrx_t
from .UserError import UserError
from .UserError import _Test_UserError_t


__all__ = [
    "MyInterface",
    "MyInterfacePrx",
    "_Test_MyInterfacePrx_t",
    "UserError",
    "_Test_UserError_t"
]
