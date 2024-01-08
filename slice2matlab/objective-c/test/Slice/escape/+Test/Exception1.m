% Exception1   Summary of Exception1
%
% Exception1 Properties:
%   isa
%   reason
%   raise
%   name
%   callStackReturnAddresses
%   userInfo
%   reserved

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Inherit.ice by slice2matlab version 3.7.10

classdef Exception1 < Ice.UserException
    properties
        isa int32
        reason int32
        raise int32
        name int32
        callStackReturnAddresses int32
        userInfo int32
        reserved int32
    end
    methods
        function obj = Exception1(ice_exid, ice_exmsg, isa, reason, raise, name, callStackReturnAddresses, userInfo, reserved)
            if nargin <= 2
                isa = 0;
                reason = 0;
                raise = 0;
                name = 0;
                callStackReturnAddresses = 0;
                userInfo = 0;
                reserved = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:Exception1';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.Exception1';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.isa = isa;
            obj.reason = reason;
            obj.raise = raise;
            obj.name = name;
            obj.callStackReturnAddresses = callStackReturnAddresses;
            obj.userInfo = userInfo;
            obj.reserved = reserved;
        end
        function id = ice_id(~)
            id = '::Test::Exception1';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.isa = is.readInt();
            obj.reason = is.readInt();
            obj.raise = is.readInt();
            obj.name = is.readInt();
            obj.callStackReturnAddresses = is.readInt();
            obj.userInfo = is.readInt();
            obj.reserved = is.readInt();
            is.endSlice();
        end
    end
end
