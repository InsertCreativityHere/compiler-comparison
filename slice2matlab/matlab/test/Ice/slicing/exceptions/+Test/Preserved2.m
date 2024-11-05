
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef Preserved2 < Test.Preserved1
    properties
        p2
    end
    methods
        function obj = Preserved2(errID, msg)
            if nargin == 0
                errID = 'Test:Preserved2';
                msg = 'Test.Preserved2';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.Preserved1(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::Preserved2';
        end
    end
    methods(Hidden=true)
        function obj = icePostUnmarshal(obj)
            obj.p2 = obj.p2.value;
            obj = icePostUnmarshal@Test.Preserved1(obj);
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.p2 = IceInternal.ValueHolder();
            is.readValue(@(v) obj.p2.set(v), 'Test.BaseClass');
            is.endSlice();
            obj = iceReadImpl@Test.Preserved1(obj, is);
        end
    end
end
