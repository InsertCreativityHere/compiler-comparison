% TopicObserver   Summary of TopicObserver

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Instrumentation.ice by slice2matlab version 3.7.10

classdef (Abstract) TopicObserver < Ice.Instrumentation.Observer
    methods(Abstract)
        published(obj)
        forwarded(obj)
    end
end
