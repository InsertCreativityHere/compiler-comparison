% AllocationTimeoutException   Summary of AllocationTimeoutException
%
% This exception is raised if the request to allocate an object times
% out.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Exception.ice by slice2matlab version 3.7.10

classdef AllocationTimeoutException < IceGrid.AllocationException
    methods
        function obj = AllocationTimeoutException(ice_exid, ice_exmsg, reason)
            if nargin <= 2
                reason = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceGrid:AllocationTimeoutException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceGrid.AllocationTimeoutException';
            end
            obj = obj@IceGrid.AllocationException(ice_exid, ice_exmsg, reason);
        end
        function id = ice_id(~)
            id = '::IceGrid::AllocationTimeoutException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
            obj = iceReadImpl@IceGrid.AllocationException(obj, is);
        end
    end
end
