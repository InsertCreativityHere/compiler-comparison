% OptionalException   Summary of OptionalException
%
% OptionalException Properties:
%   req
%   a
%   b

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef OptionalException < Ice.UserException
    properties
        req logical
        a
        b
    end
    methods
        function obj = OptionalException(ice_exid, ice_exmsg, req, a, b)
            if nargin <= 2
                req = false;
                a = 5;
                b = IceInternal.UnsetI.Instance;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:OptionalException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.OptionalException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.req = req;
            obj.a = a;
            obj.b = b;
        end
        function id = ice_id(~)
            id = '::Test::OptionalException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.req = is.readBool();
            obj.a = is.readIntOpt(1);
            obj.b = is.readStringOpt(2);
            is.endSlice();
        end
    end
end
