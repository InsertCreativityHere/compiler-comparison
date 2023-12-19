% TypeFilter   Summary of TypeFilter
%
% The TypeFilter is used by IceGrid to filter well-known proxies returned to the client when it searches a well-known
% object by type.
% IceGrid provides the list of available proxies. The implementation of this method can use the provided context and
% connection to filter and return the filtered set of proxies.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from PluginFacade.ice by slice2matlab version 3.7.10

classdef (Abstract) TypeFilter < handle
    methods(Abstract)
        result = filter(obj, type, proxies, con, ctx)
    end
end
