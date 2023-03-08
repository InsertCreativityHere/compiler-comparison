% LinkExists   Summary of LinkExists
%
% This exception indicates that an attempt was made to create a link
% that already exists.
%
% LinkExists Properties:
%   name - The name of the linked topic.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceStorm.ice by slice2matlab version 3.7.9

classdef LinkExists < Ice.UserException
    properties
        % name - The name of the linked topic.
        name char
    end
    methods
        function obj = LinkExists(ice_exid, ice_exmsg, name)
            if nargin <= 2
                name = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceStorm:LinkExists';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceStorm.LinkExists';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.name = name;
        end
        function id = ice_id(~)
            id = '::IceStorm::LinkExists';
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
