% TopicManagerObserver   Summary of TopicManagerObserver
%
% The topic manager observer interface used by the Ice run-time to obtain and update observers for its observeable
% objects. This interface should be implemented by add-ins that wish to observe IceStorm objects in order to collect
% statistics.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Instrumentation.ice by slice2matlab version 3.7.10

classdef (Abstract) TopicManagerObserver < handle
    methods(Abstract)
        result = getTopicObserver(obj, svc, name, old)
        result = getSubscriberObserver(obj, svc, topic, prx, q, link, s, old)
        setObserverUpdater(obj, updater)
    end
end
