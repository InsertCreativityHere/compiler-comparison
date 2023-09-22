% ObserverUpdater   Summary of ObserverUpdater
%
% The ObserverUpdater interface is implemented by Glacier2 and an
% instance of this interface is provided on initialization to the
% RouterObserver object.
%
% This interface can be used by add-ins imlementing the
% RouterObserver interface to update the obsevers of observed
% objects.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Instrumentation.ice by slice2matlab version 3.7.10

classdef (Abstract) ObserverUpdater < handle
    methods(Abstract)
        updateSessionObservers(obj)
    end
end
