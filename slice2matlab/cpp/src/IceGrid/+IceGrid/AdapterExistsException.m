% AdapterExistsException   Summary of AdapterExistsException
%
% This exception is raised if an adapter with the same name already exists.
%
% AdapterExistsException Properties:
%   id

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

classdef AdapterExistsException < Ice.UserException
    properties
        id char
    end
    methods
        function obj = AdapterExistsException(ice_exid, ice_exmsg, id)
            if nargin <= 2
                id = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceGrid:AdapterExistsException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceGrid.AdapterExistsException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.id = id;
        end
        function id = ice_id(~)
            id = '::IceGrid::AdapterExistsException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.id = is.readString();
            is.endSlice();
        end
    end
end
