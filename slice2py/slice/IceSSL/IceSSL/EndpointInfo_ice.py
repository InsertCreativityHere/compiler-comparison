# -*- coding: utf-8 -*-
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `EndpointInfo.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

from sys import version_info as _version_info_
import Ice, IcePy
import Ice.Endpoint_ice

# Included module Ice
_M_Ice = Ice.openModule('Ice')

# Start of module IceSSL
_M_IceSSL = Ice.openModule('IceSSL')
__name__ = 'IceSSL'
_M_IceSSL.__doc__ = """
IceSSL provides a secure transport for Ice.
"""

if 'EndpointInfo' not in _M_IceSSL.__dict__:
    _M_IceSSL.EndpointInfo = Ice.createTempClass()
    class EndpointInfo(_M_Ice.EndpointInfo):
        """
        Provides access to an SSL endpoint information.
        """
        def __init__(self, underlying=None, timeout=0, compress=False):
            if Ice.getType(self) == _M_IceSSL.EndpointInfo:
                raise RuntimeError('IceSSL.EndpointInfo is an abstract class')
            _M_Ice.EndpointInfo.__init__(self, underlying, timeout, compress)

        def __str__(self):
            return IcePy.stringify(self, _M_IceSSL._t_EndpointInfo)

        __repr__ = __str__

    _M_IceSSL._t_EndpointInfo = IcePy.declareValue('::IceSSL::EndpointInfo')

    _M_IceSSL._t_EndpointInfo = IcePy.defineValue('::IceSSL::EndpointInfo', EndpointInfo, -1, (), False, False, _M_Ice._t_EndpointInfo, ())
    EndpointInfo._ice_type = _M_IceSSL._t_EndpointInfo

    _M_IceSSL.EndpointInfo = EndpointInfo
    del EndpointInfo

# End of module IceSSL
