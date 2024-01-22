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
        function obj = AdapterNotActiveException(ice_exid, ice_exmsg, activatable)
            if nargin <= 2
                activatable = false;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceGrid:AdapterNotActiveException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceGrid.AdapterNotActiveException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.activatable = activatable;
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
