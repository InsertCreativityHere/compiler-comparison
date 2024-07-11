% TopicExists   Summary of TopicExists
%
% This exception indicates that an attempt was made to create a topic that already exists.
%
% TopicExists Properties:
%   name - The name of the topic that already exists.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceStorm.ice by slice2matlab version 3.8.0-alpha.0

classdef TopicExists < Ice.UserException
    properties
        % name - The name of the topic that already exists.
        name char
    end
    methods
        function obj = TopicExists(errID, msg)
            if nargin == 0
                errID = 'IceStorm:TopicExists';
                msg = 'IceStorm.TopicExists';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
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
