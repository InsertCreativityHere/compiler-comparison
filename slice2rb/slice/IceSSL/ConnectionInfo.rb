# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `ConnectionInfo.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'
require 'Ice/Connection.rb'

module ::IceSSL

    if not defined?(::IceSSL::ConnectionInfo_Mixin)

        module ::IceSSL::ConnectionInfo_Mixin
        end
        class ConnectionInfo < ::Ice::ConnectionInfo

            def initialize(underlying=nil, incoming=false, adapterName='', connectionId='', cipher='', certs=nil, verified=false)
                super(underlying, incoming, adapterName, connectionId)
                @cipher = cipher
                @certs = certs
                @verified = verified
            end

            attr_accessor :cipher, :certs, :verified
        end

        if not defined?(::IceSSL::T_ConnectionInfo)
            T_ConnectionInfo = ::Ice::__declareLocalClass('::IceSSL::ConnectionInfo')
        end

        T_ConnectionInfo.defineClass(ConnectionInfo, -1, false, false, ::Ice::T_ConnectionInfo, [
            ['cipher', ::Ice::T_string, false, 0],
            ['certs', ::Ice::T_StringSeq, false, 0],
            ['verified', ::Ice::T_bool, false, 0]
        ])
    end
end
