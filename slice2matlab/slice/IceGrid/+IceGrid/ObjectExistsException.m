% ObjectExistsException   Summary of ObjectExistsException
%
% This exception is raised if an object already exists.
%
% ObjectExistsException Properties:
%   id - The identity of the object.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Exception.ice by slice2matlab version 3.8.0-alpha.0

classdef ObjectExistsException < Ice.UserException
    properties
        % id - The identity of the object.
        id Ice.Identity
    end
    methods
        function obj = ObjectExistsException(ice_exid, ice_exmsg, id)
            if nargin <= 2
                id = Ice.Identity();
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceGrid:ObjectExistsException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceGrid.ObjectExistsException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.id = id;
        end
        function id = ice_id(~)
            id = '::IceGrid::ObjectExistsException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.id = Ice.Identity.ice_read(is);
            is.endSlice();
        end
    end
end
