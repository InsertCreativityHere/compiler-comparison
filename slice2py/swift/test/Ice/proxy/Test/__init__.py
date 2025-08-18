
# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from .A import A
from .A import APrx
from .A_forward import _Test_APrx_t
from .B import B
from .B import BPrx
from .B_forward import _Test_BPrx_t
from .C import C
from .C import CPrx
from .C_forward import _Test_CPrx_t
from .MyClass import MyClass
from .MyClass import MyClassPrx
from .MyClass_forward import _Test_MyClassPrx_t
from .MyDerivedClass import MyDerivedClass
from .MyDerivedClass import MyDerivedClassPrx
from .MyDerivedClass_forward import _Test_MyDerivedClassPrx_t
from .S import S
from .S import _Test_S_t


__all__ = [
    "A",
    "APrx",
    "_Test_APrx_t",
    "B",
    "BPrx",
    "_Test_BPrx_t",
    "C",
    "CPrx",
    "_Test_CPrx_t",
    "MyClass",
    "MyClassPrx",
    "_Test_MyClassPrx_t",
    "MyDerivedClass",
    "MyDerivedClassPrx",
    "_Test_MyDerivedClassPrx_t",
    "S",
    "_Test_S_t"
]
