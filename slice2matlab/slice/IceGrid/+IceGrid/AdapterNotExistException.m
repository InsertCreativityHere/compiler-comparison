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
        function obj = AdapterNotExistException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:AdapterNotExistException';
                msg = 'IceGrid.AdapterNotExistException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
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
