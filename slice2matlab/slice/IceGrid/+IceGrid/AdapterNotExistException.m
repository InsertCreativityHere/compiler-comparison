% AdapterNotExistException   Summary of AdapterNotExistException
%
% This exception is raised if an adapter does not exist.
%
% AdapterNotExistException Properties:
%   id - The id of the object adapter.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

classdef AdapterNotExistException < Ice.UserException
    properties
        % id - The id of the object adapter.
        id char
    end
    methods
        function obj = AdapterNotExistException(ice_exid, ice_exmsg, id)
            if nargin <= 2
                id = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceGrid:AdapterNotExistException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceGrid.AdapterNotExistException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.id = id;
        end
        function id = ice_id(~)
            id = '::IceGrid::AdapterNotExistException';
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
