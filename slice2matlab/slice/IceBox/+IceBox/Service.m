% Service   Summary of Service
%
% An application service managed by a ServiceManager.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Service.ice by slice2matlab version 3.7.10

classdef (Abstract) Service < handle
    methods(Abstract)
        start(obj, name, communicator, args)
        stop(obj)
    end
end
