% RegistryPluginFacade   Summary of RegistryPluginFacade
%
% The RegistryPluginFacade is implemented by IceGrid and can be used
% by plugins and filter implementations to retrieve information from
% IceGrid about the well-known objects or adapters. It's also used to
% register/unregister replica group and type filters.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from PluginFacade.ice by slice2matlab version 3.7.9

classdef (Abstract) RegistryPluginFacade < handle
    methods(Abstract)
        result = getApplicationInfo(obj, name)
        result = getServerInfo(obj, id)
        result = getAdapterServer(obj, adapterId)
        result = getAdapterApplication(obj, adapterId)
        result = getAdapterNode(obj, adapterId)
        result = getAdapterInfo(obj, id)
        result = getObjectInfo(obj, id)
        result = getNodeInfo(obj, name)
        result = getNodeLoad(obj, name)
        result = getPropertyForAdapter(obj, adapterId, name)
        addReplicaGroupFilter(obj, id, filter)
        result = removeReplicaGroupFilter(obj, id, filter)
        addTypeFilter(obj, type, filter)
        result = removeTypeFilter(obj, type, filter)
    end
end
