# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `EndpointF.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'

module ::Ice

    if not defined?(::Ice::T_EndpointInfo)
        T_EndpointInfo = ::Ice::__declareLocalClass('::Ice::EndpointInfo')
    end

    if not defined?(::Ice::T_IPEndpointInfo)
        T_IPEndpointInfo = ::Ice::__declareLocalClass('::Ice::IPEndpointInfo')
    end

    if not defined?(::Ice::T_TCPEndpointInfo)
        T_TCPEndpointInfo = ::Ice::__declareLocalClass('::Ice::TCPEndpointInfo')
    end

    if not defined?(::Ice::T_UDPEndpointInfo)
        T_UDPEndpointInfo = ::Ice::__declareLocalClass('::Ice::UDPEndpointInfo')
    end

    if not defined?(::Ice::T_WSEndpointInfo)
        T_WSEndpointInfo = ::Ice::__declareLocalClass('::Ice::WSEndpointInfo')
    end

    if not defined?(::Ice::T_Endpoint)
        T_Endpoint = ::Ice::__declareLocalClass('::Ice::Endpoint')
    end

    if not defined?(::Ice::T_EndpointSeq)
        T_EndpointSeq = ::Ice::__defineSequence('::Ice::EndpointSeq', ::Ice::T_Endpoint)
    end
end
