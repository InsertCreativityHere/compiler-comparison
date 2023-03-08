% SubscriberObserver   Summary of SubscriberObserver

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Instrumentation.ice by slice2matlab version 3.7.9

classdef (Abstract) SubscriberObserver < Ice.Instrumentation.Observer
    methods(Abstract)
        queued(obj, count)
        outstanding(obj, count)
        delivered(obj, count)
    end
end
