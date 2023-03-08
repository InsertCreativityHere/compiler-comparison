% Exception4   Summary of Exception4
%
% Exception4 Properties:
%   str
%   b

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Types.ice by slice2matlab version 3.7.9

classdef Exception4 < Ice.UserException
    properties
        str char
        b logical
    end
    methods
        function obj = Exception4(ice_exid, ice_exmsg, str, b)
            if nargin <= 2
                str = '';
                b = false;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:Exception4';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.Exception4';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.str = str;
            obj.b = b;
        end
        function id = ice_id(~)
            id = '::Test::Exception4';
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
