
# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from .Hello import Hello
from .Hello import HelloPrx
from .Hello_forward import _Test_HelloPrx_t
from .ServerManager import ServerManager
from .ServerManager import ServerManagerPrx
from .ServerManager_forward import _Test_ServerManagerPrx_t
from .TestIntf import TestIntf
from .TestIntf import TestIntfPrx
from .TestIntf_forward import _Test_TestIntfPrx_t
from .TestLocatorRegistry import TestLocatorRegistry
from .TestLocatorRegistry import TestLocatorRegistryPrx
from .TestLocatorRegistry_forward import _Test_TestLocatorRegistryPrx_t


__all__ = [
    "Hello",
    "HelloPrx",
    "_Test_HelloPrx_t",
    "ServerManager",
    "ServerManagerPrx",
    "_Test_ServerManagerPrx_t",
    "TestIntf",
    "TestIntfPrx",
    "_Test_TestIntfPrx_t",
    "TestLocatorRegistry",
    "TestLocatorRegistryPrx",
    "_Test_TestLocatorRegistryPrx_t"
]
