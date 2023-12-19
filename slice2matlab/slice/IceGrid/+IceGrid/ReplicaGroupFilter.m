% ReplicaGroupFilter   Summary of ReplicaGroupFilter
%
% The ReplicaGroupFilter is used by IceGrid to filter adapters returned to the client when it resolves a filtered
% replica group.
% IceGrid provides the list of available adapters. The implementationof this method can use the provided context and
% connection to filter and return the filtered set of adapters.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from PluginFacade.ice by slice2matlab version 3.7.10

classdef (Abstract) ReplicaGroupFilter < handle
    methods(Abstract)
        result = filter(obj, replicaGroupId, adapterIds, con, ctx)
    end
end
