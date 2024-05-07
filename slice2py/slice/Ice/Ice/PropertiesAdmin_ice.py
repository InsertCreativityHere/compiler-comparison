# -*- coding: utf-8 -*-
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file `PropertiesAdmin.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

import Ice, IcePy
import Ice.PropertyDict_ice

# Included module Ice
_M_Ice = Ice.openModule('Ice')

# Start of module Ice
__name__ = 'Ice'

_M_Ice._t_PropertiesAdmin = IcePy.defineValue('::Ice::PropertiesAdmin', Ice.Value, -1, (), True, None, ())

if 'PropertiesAdminPrx' not in _M_Ice.__dict__:
    _M_Ice.PropertiesAdminPrx = Ice.createTempClass()
    class PropertiesAdminPrx(Ice.ObjectPrx):

        """
         Get a property by key. If the property is not set, an empty string is returned.
        Arguments:
        key -- The property key.
        context -- The request context for the invocation.
        Returns: The property value.
        """
        def getProperty(self, key, context=None):
            return _M_Ice.PropertiesAdmin._op_getProperty.invoke(self, ((key, ), context))

        """
         Get a property by key. If the property is not set, an empty string is returned.
        Arguments:
        key -- The property key.
        context -- The request context for the invocation.
        Returns: A future object for the invocation.
        """
        def getPropertyAsync(self, key, context=None):
            return _M_Ice.PropertiesAdmin._op_getProperty.invokeAsync(self, ((key, ), context))

        """
         Get all properties whose keys begin with prefix. If prefix is an empty string then all
         properties are returned.
        Arguments:
        prefix -- The prefix to search for (empty string if none).
        context -- The request context for the invocation.
        Returns: The matching property set.
        """
        def getPropertiesForPrefix(self, prefix, context=None):
            return _M_Ice.PropertiesAdmin._op_getPropertiesForPrefix.invoke(self, ((prefix, ), context))

        """
         Get all properties whose keys begin with prefix. If prefix is an empty string then all
         properties are returned.
        Arguments:
        prefix -- The prefix to search for (empty string if none).
        context -- The request context for the invocation.
        Returns: A future object for the invocation.
        """
        def getPropertiesForPrefixAsync(self, prefix, context=None):
            return _M_Ice.PropertiesAdmin._op_getPropertiesForPrefix.invokeAsync(self, ((prefix, ), context))

        """
         Update the communicator's properties with the given property set. If an entry in newProperties
         matches the name of an existing property, that property's value is replaced with the new value. If the new
         value is an empty string, the property is removed. Any existing properties that are not modified or removed
         by the entries in newProperties are retained with their original values.
        Arguments:
        newProperties -- Properties to be added, changed, or removed.
        context -- The request context for the invocation.
        """
        def setProperties(self, newProperties, context=None):
            return _M_Ice.PropertiesAdmin._op_setProperties.invoke(self, ((newProperties, ), context))

        """
         Update the communicator's properties with the given property set. If an entry in newProperties
         matches the name of an existing property, that property's value is replaced with the new value. If the new
         value is an empty string, the property is removed. Any existing properties that are not modified or removed
         by the entries in newProperties are retained with their original values.
        Arguments:
        newProperties -- Properties to be added, changed, or removed.
        context -- The request context for the invocation.
        Returns: A future object for the invocation.
        """
        def setPropertiesAsync(self, newProperties, context=None):
            return _M_Ice.PropertiesAdmin._op_setProperties.invokeAsync(self, ((newProperties, ), context))

        @staticmethod
        def checkedCast(proxy, facetOrContext=None, context=None):
            return _M_Ice.PropertiesAdminPrx.ice_checkedCast(proxy, '::Ice::PropertiesAdmin', facetOrContext, context)

        @staticmethod
        def uncheckedCast(proxy, facet=None):
            return _M_Ice.PropertiesAdminPrx.ice_uncheckedCast(proxy, facet)

        @staticmethod
        def ice_staticId():
            return '::Ice::PropertiesAdmin'
    _M_Ice._t_PropertiesAdminPrx = IcePy.defineProxy('::Ice::PropertiesAdmin', PropertiesAdminPrx)

    _M_Ice.PropertiesAdminPrx = PropertiesAdminPrx
    del PropertiesAdminPrx

    _M_Ice.PropertiesAdmin = Ice.createTempClass()
    class PropertiesAdmin(Ice.Object):

        def ice_ids(self, current=None):
            return ('::Ice::Object', '::Ice::PropertiesAdmin')

        def ice_id(self, current=None):
            return '::Ice::PropertiesAdmin'

        @staticmethod
        def ice_staticId():
            return '::Ice::PropertiesAdmin'

        def getProperty(self, key, current=None):
            """
             Get a property by key. If the property is not set, an empty string is returned.
            Arguments:
            key -- The property key.
            current -- The Current object for the invocation.
            Returns: A future object for the invocation.
            """
            raise NotImplementedError("servant method 'getProperty' not implemented")

        def getPropertiesForPrefix(self, prefix, current=None):
            """
             Get all properties whose keys begin with prefix. If prefix is an empty string then all
             properties are returned.
            Arguments:
            prefix -- The prefix to search for (empty string if none).
            current -- The Current object for the invocation.
            Returns: A future object for the invocation.
            """
            raise NotImplementedError("servant method 'getPropertiesForPrefix' not implemented")

        def setProperties(self, newProperties, current=None):
            """
             Update the communicator's properties with the given property set. If an entry in newProperties
             matches the name of an existing property, that property's value is replaced with the new value. If the new
             value is an empty string, the property is removed. Any existing properties that are not modified or removed
             by the entries in newProperties are retained with their original values.
            Arguments:
            newProperties -- Properties to be added, changed, or removed.
            current -- The Current object for the invocation.
            Returns: A future object for the invocation.
            """
            raise NotImplementedError("servant method 'setProperties' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Ice._t_PropertiesAdminDisp)

        __repr__ = __str__

    _M_Ice._t_PropertiesAdminDisp = IcePy.defineClass('::Ice::PropertiesAdmin', PropertiesAdmin, (), None, ())
    PropertiesAdmin._ice_type = _M_Ice._t_PropertiesAdminDisp

    PropertiesAdmin._op_getProperty = IcePy.Operation('getProperty', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_string, False, 0),), (), ((), IcePy._t_string, False, 0), ())
    PropertiesAdmin._op_getPropertiesForPrefix = IcePy.Operation('getPropertiesForPrefix', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_string, False, 0),), (), ((), _M_Ice._t_PropertyDict, False, 0), ())
    PropertiesAdmin._op_setProperties = IcePy.Operation('setProperties', Ice.OperationMode.Normal, False, None, (), (((), _M_Ice._t_PropertyDict, False, 0),), (), None, ())

    _M_Ice.PropertiesAdmin = PropertiesAdmin
    del PropertiesAdmin

# End of module Ice
