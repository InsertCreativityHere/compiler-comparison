% PluginManager   Summary of PluginManager
%
% Each communicator has a plug-in manager to administer the set of
% plug-ins.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Plugin.ice by slice2matlab version 3.7.10

classdef (Abstract) PluginManager < handle
    methods(Abstract)
        initializePlugins(obj)
        result = getPlugins(obj)
        result = getPlugin(obj, name)
        addPlugin(obj, name, pi)
        destroy(obj)
    end
end
