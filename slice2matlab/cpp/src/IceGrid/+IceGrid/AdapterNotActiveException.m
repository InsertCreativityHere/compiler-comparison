% AdapterNotActiveException   Summary of AdapterNotActiveException
%
% AdapterNotActiveException Properties:
%   activatable - True if the adapter can be activated on demand.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

classdef AdapterNotActiveException < Ice.UserException
    properties
        % activatable - True if the adapter can be activated on demand.
        activatable logical
    end
    methods
        function obj = AdapterNotActiveException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:AdapterNotActiveException';
                msg = 'IceGrid.AdapterNotActiveException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::AdapterNotActiveException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.activatable = is.readBool();
            is.endSlice();
        end
    end
end
