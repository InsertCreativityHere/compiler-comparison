% Exception1   Summary of Exception1
%
% Exception1 Properties:
%   str
%   b

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.10

classdef Exception1 < Ice.UserException
    properties
        str char
        b logical
    end
    methods
        function obj = Exception1(ice_exid, ice_exmsg, str, b)
            if nargin <= 2
                str = '';
                b = false;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:Exception1';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.Exception1';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.str = str;
            obj.b = b;
        end
        function id = ice_id(~)
            id = '::Test::Exception1';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.str = is.readString();
            obj.b = is.readBool();
            is.endSlice();
        end
    end
end
