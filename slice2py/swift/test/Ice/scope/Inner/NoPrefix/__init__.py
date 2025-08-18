
# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from .MyClass import MyClass
from .MyClass_forward import _Inner_NoPrefix_MyClass_t
from .MyInterface import MyInterface
from .MyInterface import MyInterfacePrx
from .MyInterface_forward import _Inner_NoPrefix_MyInterfacePrx_t


__all__ = [
    "MyClass",
    "_Inner_NoPrefix_MyClass_t",
    "MyInterface",
    "MyInterfacePrx",
    "_Inner_NoPrefix_MyInterfacePrx_t"
]
