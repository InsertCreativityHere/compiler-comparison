
% Copyright (c) ZeroC, Inc.
% Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef Preserved1 < Test.KnownPreservedDerived
    properties
        p1
    end
    methods
        function obj = Preserved1(errID, msg)
            if nargin == 0
                errID = 'Test:Preserved1';
                msg = 'Test.Preserved1';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.KnownPreservedDerived(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::Preserved1';
        end
    end
    methods(Hidden=true)
        function obj = icePostUnmarshal(obj)
            obj.p1 = obj.p1.value;
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.p1 = IceInternal.ValueHolder();
            is.readValue(@(v) obj.p1.set(v), 'Test.BaseClass');
            is.endSlice();
            obj = iceReadImpl@Test.KnownPreservedDerived(obj, is);
        end
    end
end
