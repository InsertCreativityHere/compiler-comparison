% B   Summary of B
%
% B Properties:
%   bMem

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef B < Test.A
    properties
        bMem int32
    end
    methods
        function obj = B(ice_exid, ice_exmsg, aMem, bMem)
            if nargin <= 2
                aMem = 0;
                bMem = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:B';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.B';
            end
            obj = obj@Test.A(ice_exid, ice_exmsg, aMem);
            obj.bMem = bMem;
        end
        function id = ice_id(~)
            id = '::Test::B';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.bMem = is.readInt();
            is.endSlice();
            obj = iceReadImpl@Test.A(obj, is);
        end
    end
end
