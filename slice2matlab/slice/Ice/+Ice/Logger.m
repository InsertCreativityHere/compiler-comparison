% Logger   Summary of Logger
%
% The Ice message logger. Applications can provide their own logger
% by implementing this interface and installing it in a communicator.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Logger.ice by slice2matlab version 3.7.10

classdef (Abstract) Logger < handle
    methods(Abstract)
        print(obj, message)
        trace(obj, category, message)
        warning(obj, message)
        error(obj, message)
        result = getPrefix(obj)
        result = cloneWithPrefix(obj, prefix)
    end
end
