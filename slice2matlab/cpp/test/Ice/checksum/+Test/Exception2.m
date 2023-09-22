% Exception2   Summary of Exception2
%
% Exception2 Properties:
%   str
%   b
%   f

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.10

classdef Exception2 < Ice.UserException
    properties
        str char
        b logical
        f single
    end
    methods
        function obj = Exception2(ice_exid, ice_exmsg, str, b, f)
            if nargin <= 2
                str = '';
                b = false;
                f = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:Exception2';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.Exception2';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.str = str;
            obj.b = b;
            obj.f = f;
        end
        function id = ice_id(~)
            id = '::Test::Exception2';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.str = is.readString();
            obj.b = is.readBool();
            obj.f = is.readFloat();
            is.endSlice();
        end
    end
end
