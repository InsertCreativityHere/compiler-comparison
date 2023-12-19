% def   Summary of def
%
% Test keyword escape.
%
% def Properties:
%   i

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from NoPackage.ice by slice2matlab version 3.7.10

classdef def < Ice.UserException
    properties
        i int32
    end
    methods
        function obj = def(ice_exid, ice_exmsg, i)
            if nargin <= 2
                i = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test1:def';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test1.def';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.i = i;
        end
        function id = ice_id(~)
            id = '::Test1::def';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.i = is.readInt();
            is.endSlice();
        end
    end
end
