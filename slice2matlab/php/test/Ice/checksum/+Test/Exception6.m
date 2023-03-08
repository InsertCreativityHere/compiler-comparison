% Exception6   Summary of Exception6
%
% Exception6 Properties:
%   str
%   b

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from CTypes.ice by slice2matlab version 3.7.9

classdef Exception6 < Ice.UserException
    properties
        str char
        b logical
    end
    methods
        function obj = Exception6(ice_exid, ice_exmsg, str, b)
            if nargin <= 2
                str = '';
                b = false;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:Exception6';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.Exception6';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.str = str;
            obj.b = b;
        end
        function id = ice_id(~)
            id = '::Test::Exception6';
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
