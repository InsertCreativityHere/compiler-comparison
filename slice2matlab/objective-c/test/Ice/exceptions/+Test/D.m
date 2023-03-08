% D   Summary of D
%
% D Properties:
%   dMem

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ExceptionsTest.ice by slice2matlab version 3.7.9

classdef D < Ice.UserException
    properties
        dMem int32
    end
    methods
        function obj = D(ice_exid, ice_exmsg, dMem)
            if nargin <= 2
                dMem = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:D';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.D';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.dMem = dMem;
        end
        function id = ice_id(~)
            id = '::Test::D';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.dMem = is.readInt();
            is.endSlice();
        end
    end
end
