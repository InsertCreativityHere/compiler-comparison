% Base   Summary of Base
%
% Base Properties:
%   b

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerPrivate.ice by slice2matlab version 3.7.10

classdef Base < Ice.UserException
    properties
        b char
    end
    methods
        function obj = Base(ice_exid, ice_exmsg, b)
            if nargin <= 2
                b = '';
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:Base';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.Base';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.b = b;
        end
        function id = ice_id(~)
            id = '::Test::Base';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.b = is.readString();
            is.endSlice();
        end
    end
end
