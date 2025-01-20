% NoSuchLink   Summary of NoSuchLink
%
% This exception indicates that an attempt was made to remove a link that does not exist.
%
% NoSuchLink Properties:
%   name - The name of the link that does not exist.

% Copyright (c) ZeroC, Inc.
% Generated from IceStorm.ice by slice2matlab version 3.8.0-alpha.0

classdef NoSuchLink < Ice.UserException
    properties
        % name - The name of the link that does not exist.
        name char
    end
    methods
        function obj = NoSuchLink(errID, msg)
            if nargin == 0
                errID = 'IceStorm:NoSuchLink';
                msg = 'IceStorm.NoSuchLink';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
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
