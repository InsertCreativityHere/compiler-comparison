% AlreadySubscribed   Summary of AlreadySubscribed
%
% This exception indicates that an attempt was made to subscribe a proxy for which a subscription already exists.

% Copyright (c) ZeroC, Inc.
% Generated from IceStorm.ice by slice2matlab version 3.8.0-alpha.0

classdef AlreadySubscribed < Ice.UserException
    methods
        function obj = AlreadySubscribed(errID, msg)
            if nargin == 0
                errID = 'IceStorm:AlreadySubscribed';
                msg = 'IceStorm.AlreadySubscribed';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceStorm::AlreadySubscribed';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
end
