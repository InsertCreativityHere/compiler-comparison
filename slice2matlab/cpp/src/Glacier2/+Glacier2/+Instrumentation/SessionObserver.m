% SessionObserver   Summary of SessionObserver

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Instrumentation.ice by slice2matlab version 3.7.10

classdef (Abstract) SessionObserver < Ice.Instrumentation.Observer
    methods(Abstract)
        forwarded(obj, client)
        queued(obj, client)
        overridden(obj, client)
        routingTableSize(obj, delta)
    end
end
