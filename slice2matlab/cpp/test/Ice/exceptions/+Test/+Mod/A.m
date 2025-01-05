
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef A < Test.A
    properties
        a2Mem int32
    end
    methods
        function obj = A(errID, msg)
            if nargin == 0
                errID = 'Test:Mod:A';
                msg = 'Test.Mod.A';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.A(errID, msg);
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
