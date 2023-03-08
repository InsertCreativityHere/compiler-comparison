% RouterObserver   Summary of RouterObserver
%
% The router observer interface used by Glacier2 to obtain and update
% observers for its observeable objects. This interface should be
% implemented by add-ins that wish to observe Glacier2 objects in
% order to collect statistics.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Instrumentation.ice by slice2matlab version 3.7.9

classdef (Abstract) RouterObserver < handle
    methods(Abstract)
        result = getSessionObserver(obj, id, con, routingTableSize, old)
        setObserverUpdater(obj, updater)
    end
end
