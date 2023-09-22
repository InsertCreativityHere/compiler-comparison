% ServantLocator   Summary of ServantLocator
%
% A servant locator is called by an object adapter to
% locate a servant that is not found in its active servant map.
%
% See also Ice.ObjectAdapter, Ice.ObjectAdapter.addServantLocator, Ice.ObjectAdapter.findServantLocator

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServantLocator.ice by slice2matlab version 3.7.10

classdef (Abstract) ServantLocator < handle
    methods(Abstract)
        [result, cookie] = locate(obj, curr)
        finished(obj, curr, servant, cookie)
        deactivate(obj, category)
    end
end
