% LinkExists   Summary of LinkExists
%
% This exception indicates that an attempt was made to create a link that already exists.
%
% LinkExists Properties:
%   name - The name of the linked topic.

% Copyright (c) ZeroC, Inc.
% Generated from IceStorm.ice by slice2matlab version 3.8.0-alpha.0

classdef LinkExists < Ice.UserException
    properties
        % name - The name of the linked topic.
        name char
    end
    methods
        function obj = LinkExists(errID, msg)
            if nargin == 0
                errID = 'IceStorm:LinkExists';
                msg = 'IceStorm.LinkExists';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
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
