% AllocationTimeoutException   Summary of AllocationTimeoutException
%
% This exception is raised if the request to allocate an object times out.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

classdef AllocationTimeoutException < IceGrid.AllocationException
    methods
        function obj = AllocationTimeoutException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:AllocationTimeoutException';
                msg = 'IceGrid.AllocationTimeoutException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@IceGrid.AllocationException(errID, msg);
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
