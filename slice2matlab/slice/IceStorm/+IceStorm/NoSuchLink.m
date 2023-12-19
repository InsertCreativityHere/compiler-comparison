% NoSuchLink   Summary of NoSuchLink
%
% This exception indicates that an attempt was made to remove a link that does not exist.
%
% NoSuchLink Properties:
%   name - The name of the link that does not exist.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceStorm.ice by slice2matlab version 3.7.10

classdef NoSuchLink < Ice.UserException
    properties
        % name - The name of the link that does not exist.
        name char
    end
    methods
        function obj = NoSuchLink(ice_exid, ice_exmsg, name)
            if nargin <= 2
                name = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceStorm:NoSuchLink';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceStorm.NoSuchLink';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.name = name;
        end
        function id = ice_id(~)
            id = '::IceStorm::NoSuchLink';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.name = is.readString();
            is.endSlice();
        end
    end
end
