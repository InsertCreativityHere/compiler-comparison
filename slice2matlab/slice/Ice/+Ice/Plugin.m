% Plugin   Summary of Plugin
%
% A communicator plug-in. A plug-in generally adds a feature to a
% communicator, such as support for a protocol.
%
% The communicator loads its plug-ins in two stages: the first stage
% creates the plug-ins, and the second stage invokes Plugin.initialize on
% each one.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Plugin.ice by slice2matlab version 3.7.9

classdef (Abstract) Plugin < handle
    methods(Abstract)
        initialize(obj)
        destroy(obj)
    end
end
