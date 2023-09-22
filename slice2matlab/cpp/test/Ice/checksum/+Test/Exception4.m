% Exception4   Summary of Exception4
%
% Exception4 Properties:
%   b

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.10

classdef Exception4 < Ice.UserException
    properties
        b logical
    end
    methods
        function obj = Exception4(ice_exid, ice_exmsg, b)
            if nargin <= 2
                b = false;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:Exception4';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.Exception4';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.b = b;
        end
        function id = ice_id(~)
            id = '::Test::Exception4';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.b = is.readBool();
            is.endSlice();
        end
    end
end
