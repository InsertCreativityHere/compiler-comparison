% AlreadySubscribed   Summary of AlreadySubscribed
%
% This exception indicates that an attempt was made to subscribe
% a proxy for which a subscription already exists.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceStorm.ice by slice2matlab version 3.7.9

classdef AlreadySubscribed < Ice.UserException
    methods
        function obj = AlreadySubscribed(ice_exid, ice_exmsg)
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'IceStorm:AlreadySubscribed';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'IceStorm.AlreadySubscribed';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
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
