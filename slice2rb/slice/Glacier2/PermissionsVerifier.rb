# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file `PermissionsVerifier.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'
require_relative 'SSLInfo.rb'

module ::Glacier2

    if not defined?(::Glacier2::PermissionDeniedException)
        class PermissionDeniedException < Ice::UserException
            def initialize(reason='')
                @reason = reason
            end

            def to_s
                '::Glacier2::PermissionDeniedException'
            end

            attr_accessor :reason
        end

        T_PermissionDeniedException = ::Ice::__defineException('::Glacier2::PermissionDeniedException', PermissionDeniedException, nil, [["reason", ::Ice::T_string, false, 0]])
    end

    if not defined?(::Glacier2::PermissionsVerifier_Mixin)

        module ::Glacier2::PermissionsVerifier_Mixin
        end
        module PermissionsVerifierPrx_mixin

            def checkPermissions(userId, password, context=nil)
                PermissionsVerifierPrx_mixin::OP_checkPermissions.invoke(self, [userId, password], context)
            end
        end

        class PermissionsVerifierPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include PermissionsVerifierPrx_mixin
        end

        if not defined?(::Glacier2::T_PermissionsVerifierPrx)
            T_PermissionsVerifier = ::Ice::__declareClass('::Glacier2::PermissionsVerifier')
            T_PermissionsVerifierPrx = ::Ice::__declareProxy('::Glacier2::PermissionsVerifier')
        end

        T_PermissionsVerifierPrx.defineProxy(PermissionsVerifierPrx, nil, [])

        PermissionsVerifierPrx_mixin::OP_checkPermissions = ::Ice::__defineOperation('checkPermissions', ::Ice::OperationMode::Idempotent, ::Ice::OperationMode::Nonmutating, false, ::Ice::FormatType::SlicedFormat, [[::Ice::T_string, false, 0], [::Ice::T_string, false, 0]], [[::Ice::T_string, false, 0]], [::Ice::T_bool, false, 0], [::Glacier2::T_PermissionDeniedException])
    end

    if not defined?(::Glacier2::SSLPermissionsVerifier_Mixin)

        module ::Glacier2::SSLPermissionsVerifier_Mixin
        end
        module SSLPermissionsVerifierPrx_mixin

            def authorize(info, context=nil)
                SSLPermissionsVerifierPrx_mixin::OP_authorize.invoke(self, [info], context)
            end
        end

        class SSLPermissionsVerifierPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include SSLPermissionsVerifierPrx_mixin
        end

        if not defined?(::Glacier2::T_SSLPermissionsVerifierPrx)
            T_SSLPermissionsVerifier = ::Ice::__declareClass('::Glacier2::SSLPermissionsVerifier')
            T_SSLPermissionsVerifierPrx = ::Ice::__declareProxy('::Glacier2::SSLPermissionsVerifier')
        end

        T_SSLPermissionsVerifierPrx.defineProxy(SSLPermissionsVerifierPrx, nil, [])

        SSLPermissionsVerifierPrx_mixin::OP_authorize = ::Ice::__defineOperation('authorize', ::Ice::OperationMode::Idempotent, ::Ice::OperationMode::Nonmutating, false, ::Ice::FormatType::SlicedFormat, [[::Glacier2::T_SSLInfo, false, 0]], [[::Ice::T_string, false, 0]], [::Ice::T_bool, false, 0], [::Glacier2::T_PermissionDeniedException])
    end
end
