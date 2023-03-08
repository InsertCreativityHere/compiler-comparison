% A   Summary of A
%
% A Properties:
%   aMem

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ExceptionsTest.ice by slice2matlab version 3.7.9

classdef A < Ice.UserException
    properties
        aMem int32
    end
    methods
        function obj = A(ice_exid, ice_exmsg, aMem)
            if nargin <= 2
                aMem = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:A';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.A';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.aMem = aMem;
        end
        function id = ice_id(~)
            id = '::Test::A';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.aMem = is.readInt();
            is.endSlice();
        end
    end
end
