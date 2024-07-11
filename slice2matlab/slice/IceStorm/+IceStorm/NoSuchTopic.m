% NoSuchTopic   Summary of NoSuchTopic
%
% This exception indicates that an attempt was made to retrieve a topic that does not exist.
%
% NoSuchTopic Properties:
%   name - The name of the topic that does not exist.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceStorm.ice by slice2matlab version 3.8.0-alpha.0

classdef NoSuchTopic < Ice.UserException
    properties
        % name - The name of the topic that does not exist.
        name char
    end
    methods
        function obj = NoSuchTopic(errID, msg)
            if nargin == 0
                errID = 'IceStorm:NoSuchTopic';
                msg = 'IceStorm.NoSuchTopic';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceStorm::NoSuchTopic';
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
