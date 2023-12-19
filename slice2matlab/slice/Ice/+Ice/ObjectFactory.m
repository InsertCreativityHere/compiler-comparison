% ObjectFactory   Summary of ObjectFactory
%
% A factory for objects. Object factories are used when receiving "objects by value". An object factory must be
% implemented by the application writer and registered with the communicator.
%
% Deprecated: ObjectFactory has been deprecated, use ValueFactory instead.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ObjectFactory.ice by slice2matlab version 3.7.10

classdef (Abstract) ObjectFactory < handle
    methods(Abstract)
        result = create(obj, type)
        destroy(obj)
    end
end
