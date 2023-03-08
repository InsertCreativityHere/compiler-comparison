% OtherException   Summary of OtherException
%
% OtherException Properties:
%   x
%   y
%   z
%   b

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef OtherException < Ice.UserException
    properties
        x int32
        y int32
        z int32
        b logical
    end
    methods
        function obj = OtherException(ice_exid, ice_exmsg, x, y, z, b)
            if nargin <= 2
                x = 0;
                y = 0;
                z = 0;
                b = false;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:OtherException';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.OtherException';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.x = x;
            obj.y = y;
            obj.z = z;
            obj.b = b;
        end
        function id = ice_id(~)
            id = '::Test::OtherException';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.x = is.readInt();
            obj.y = is.readInt();
            obj.z = is.readInt();
            obj.b = is.readBool();
            is.endSlice();
        end
    end
end
