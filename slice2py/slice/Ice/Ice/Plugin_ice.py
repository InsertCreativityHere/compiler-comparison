# -*- coding: utf-8 -*-
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.7.9
#
# <auto-generated>
#
# Generated from file `Plugin.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

from sys import version_info as _version_info_
import Ice, IcePy
import Ice.LoggerF_ice
import Ice.BuiltinSequences_ice

# Included module Ice
_M_Ice = Ice.openModule('Ice')

# Start of module Ice
__name__ = 'Ice'

if 'Plugin' not in _M_Ice.__dict__:
    _M_Ice.Plugin = Ice.createTempClass()
    class Plugin(object):
        """
        A communicator plug-in. A plug-in generally adds a feature to a
        communicator, such as support for a protocol.
        The communicator loads its plug-ins in two stages: the first stage
        creates the plug-ins, and the second stage invokes Plugin#initialize on
        each one.
        """
        def __init__(self):
            if Ice.getType(self) == _M_Ice.Plugin:
                raise RuntimeError('Ice.Plugin is an abstract class')

        def initialize(self):
            """
            Perform any necessary initialization steps.
            """
            raise NotImplementedError("method 'initialize' not implemented")

        def destroy(self):
            """
            Called when the communicator is being destroyed.
            """
            raise NotImplementedError("method 'destroy' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Ice._t_Plugin)

        __repr__ = __str__

    _M_Ice._t_Plugin = IcePy.defineValue('::Ice::Plugin', Plugin, -1, (), False, True, None, ())
    Plugin._ice_type = _M_Ice._t_Plugin

    _M_Ice.Plugin = Plugin
    del Plugin

if 'PluginManager' not in _M_Ice.__dict__:
    _M_Ice.PluginManager = Ice.createTempClass()
    class PluginManager(object):
        """
        Each communicator has a plug-in manager to administer the set of
        plug-ins.
        """
        def __init__(self):
            if Ice.getType(self) == _M_Ice.PluginManager:
                raise RuntimeError('Ice.PluginManager is an abstract class')

        def initializePlugins(self):
            """
            Initialize the configured plug-ins. The communicator automatically initializes
            the plug-ins by default, but an application may need to interact directly with
            a plug-in prior to initialization. In this case, the application must set
            Ice.InitPlugins=0 and then invoke initializePlugins
            manually. The plug-ins are initialized in the order in which they are loaded.
            If a plug-in raises an exception during initialization, the communicator
            invokes destroy on the plug-ins that have already been initialized.
            Throws:
            InitializationException -- Raised if the plug-ins have already been initialized.
            """
            raise NotImplementedError("method 'initializePlugins' not implemented")

        def getPlugins(self):
            """
            Get a list of plugins installed.
            Returns: The names of the plugins installed.
            """
            raise NotImplementedError("method 'getPlugins' not implemented")

        def getPlugin(self, name):
            """
            Obtain a plug-in by name.
            Arguments:
            name -- The plug-in's name.
            Returns: The plug-in.
            Throws:
            NotRegisteredException -- Raised if no plug-in is found with the given name.
            """
            raise NotImplementedError("method 'getPlugin' not implemented")

        def addPlugin(self, name, pi):
            """
            Install a new plug-in.
            Arguments:
            name -- The plug-in's name.
            pi -- The plug-in.
            Throws:
            AlreadyRegisteredException -- Raised if a plug-in already exists with the given name.
            """
            raise NotImplementedError("method 'addPlugin' not implemented")

        def destroy(self):
            """
            Called when the communicator is being destroyed.
            """
            raise NotImplementedError("method 'destroy' not implemented")

        def __str__(self):
            return IcePy.stringify(self, _M_Ice._t_PluginManager)

        __repr__ = __str__

    _M_Ice._t_PluginManager = IcePy.defineValue('::Ice::PluginManager', PluginManager, -1, (), False, True, None, ())
    PluginManager._ice_type = _M_Ice._t_PluginManager

    _M_Ice.PluginManager = PluginManager
    del PluginManager

# End of module Ice
