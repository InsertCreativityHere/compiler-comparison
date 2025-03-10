# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'PropertiesAdmin.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>

require 'Ice'
require_relative 'PropertyDict.rb'

module ::Ice
    if not defined?(::Ice::T_PropertiesAdminPrx)
        T_PropertiesAdminPrx = Ice::__declareProxy('::Ice::PropertiesAdmin')
    end

    if not defined?(::Ice::PropertiesAdminPrx)
        module PropertiesAdminPrx_mixin
            def getProperty(key, context=nil)
                PropertiesAdminPrx_mixin::OP_getProperty.invoke(self, [key], context)
            end

            def getPropertiesForPrefix(prefix, context=nil)
                PropertiesAdminPrx_mixin::OP_getPropertiesForPrefix.invoke(self, [prefix], context)
            end

            def setProperties(newProperties, context=nil)
                PropertiesAdminPrx_mixin::OP_setProperties.invoke(self, [newProperties], context)
            end
        end

        class PropertiesAdminPrx < Ice::ObjectPrx
            include Ice::Proxy_mixin
            include PropertiesAdminPrx_mixin
        end

        T_PropertiesAdminPrx.defineProxy(PropertiesAdminPrx, nil, [])

        PropertiesAdminPrx_mixin::OP_getProperty = Ice::__defineOperation('getProperty', Ice::OperationMode::Normal, nil, [[Ice::T_string, false, 0]], [], [Ice::T_string, false, 0], [])
        PropertiesAdminPrx_mixin::OP_getPropertiesForPrefix = Ice::__defineOperation('getPropertiesForPrefix', Ice::OperationMode::Normal, nil, [[Ice::T_string, false, 0]], [], [::Ice::T_PropertyDict, false, 0], [])
        PropertiesAdminPrx_mixin::OP_setProperties = Ice::__defineOperation('setProperties', Ice::OperationMode::Normal, nil, [[::Ice::T_PropertyDict, false, 0]], [], nil, [])
    end
end
