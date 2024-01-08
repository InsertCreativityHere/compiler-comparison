% AllocationException   Summary of AllocationException
%
% This exception is raised if the allocation of an object failed.
%
% AllocationException Properties:
%   reason - The reason why the object couldn't be allocated.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Exception.ice by slice2matlab version 3.7.10

classdef AllocationException < Ice.UserException
    properties
        % reason - The reason why the object couldn't be allocated.
        reason char
    end
    methods
        function obj = AllocationException(ice_exid, ice_exmsg, reason)
            if nargin <= 2
                reason = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceGrid:AllocationException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceGrid.AllocationException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.reason = reason;
        end
        function id = ice_id(~)
            id = '::IceGrid::AllocationException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.reason = is.readString();
            is.endSlice();
        end
    end
end
