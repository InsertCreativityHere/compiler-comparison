% TopicExists   Summary of TopicExists
%
% This exception indicates that an attempt was made to create a topic that already exists.
%
% TopicExists Properties:
%   name - The name of the topic that already exists.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceStorm.ice by slice2matlab version 3.7.10

classdef TopicExists < Ice.UserException
    properties
        % name - The name of the topic that already exists.
        name char
    end
    methods
        function obj = TopicExists(ice_exid, ice_exmsg, name)
            if nargin <= 2
                name = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceStorm:TopicExists';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceStorm.TopicExists';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.name = name;
        end
        function id = ice_id(~)
            id = '::IceStorm::TopicExists';
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
