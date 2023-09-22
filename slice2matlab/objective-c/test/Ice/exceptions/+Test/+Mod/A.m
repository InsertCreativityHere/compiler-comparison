% A   Summary of A
%
% A Properties:
%   a2Mem

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ExceptionsTest.ice by slice2matlab version 3.7.10

classdef A < Test.A
    properties
        a2Mem int32
    end
    methods
        function obj = A(ice_exid, ice_exmsg, aMem, a2Mem)
            if nargin <= 2
                aMem = 0;
                a2Mem = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'Test:Mod:A';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'Test.Mod.A';
            end
            obj = obj@Test.A(ice_exid, ice_exmsg, aMem);
            obj.a2Mem = a2Mem;
        end
        function id = ice_id(~)
            id = '::Test::Mod::A';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.a2Mem = is.readInt();
            is.endSlice();
            obj = iceReadImpl@Test.A(obj, is);
        end
    end
end
