% ImplicitContext   Summary of ImplicitContext
%
% An interface to associate implict contexts with communicators.
%
% When you make a remote invocation without an explicit context parameter,
% Ice uses the per-proxy context (if any) combined with the ImplicitContext
% associated with the communicator.
%
% Ice provides several implementations of ImplicitContext. The implementation
% used depends on the value of the Ice.ImplicitContext property.
%
% None (default)
% No implicit context at all.
% PerThread
% The implementation maintains a context per thread.
% Shared
% The implementation maintains a single context shared by all threads.
%
%
% ImplicitContext also provides a number of operations to create, update or retrieve
% an entry in the underlying context without first retrieving a copy of the entire
% context. These operations correspond to a subset of the java.util.Map methods,
% with java.lang.Object replaced by string and null replaced by the empty-string.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ImplicitContext.ice by slice2matlab version 3.7.9

classdef (Abstract) ImplicitContext < handle
    methods(Abstract)
        result = getContext(obj)
        setContext(obj, newContext)
        result = containsKey(obj, key)
        result = get(obj, key)
        result = put(obj, key, value)
        result = remove(obj, key)
    end
end
