
# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from .Controller import Controller
from .Controller import ControllerPrx
from .Controller_forward import _Test_ControllerPrx_t
from .TestIntf import TestIntf
from .TestIntf import TestIntfPrx
from .TestIntf_forward import _Test_TestIntfPrx_t


__all__ = [
    "Controller",
    "ControllerPrx",
    "_Test_ControllerPrx_t",
    "TestIntf",
    "TestIntfPrx",
    "_Test_TestIntfPrx_t"
]
