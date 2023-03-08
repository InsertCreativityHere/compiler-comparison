% Exception3   Summary of Exception3
%
% Exception3 Properties:
%   str
%   b

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.9

classdef Exception3 < Ice.UserException
    properties
        str char
        b double
    end
    methods
        function obj = Exception3(ice_exid, ice_exmsg, str, b)
            if nargin <= 2
                str = '';
                b = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:Exception3';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.Exception3';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.str = str;
            obj.b = b;
        end
        function id = ice_id(~)
            id = '::Test::Exception3';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.str = is.readString();
            obj.b = is.readDouble();
            is.endSlice();
        end
    end
end
