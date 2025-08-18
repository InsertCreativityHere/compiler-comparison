
# Copyright (c) ZeroC, Inc.

# slice2py version 3.8.0-alpha.0

from .Pingable import Pingable
from .Pingable import PingablePrx
from .Pingable_forward import _Test_PingablePrx_t
from .Properties import _Test_Properties_t
from .Server import Server
from .Server import ServerPrx
from .ServerFactory import ServerFactory
from .ServerFactory import ServerFactoryPrx
from .ServerFactory_forward import _Test_ServerFactoryPrx_t
from .Server_forward import _Test_ServerPrx_t


__all__ = [
    "Pingable",
    "PingablePrx",
    "_Test_PingablePrx_t",
    "_Test_Properties_t",
    "Server",
    "ServerPrx",
    "ServerFactory",
    "ServerFactoryPrx",
    "_Test_ServerFactoryPrx_t",
    "_Test_ServerPrx_t"
]
