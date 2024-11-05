
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef UnknownMostDerived1 < Test.KnownIntermediate
    properties
        umd1 char
    end
    methods
        function obj = UnknownMostDerived1(errID, msg)
            if nargin == 0
                errID = 'Test:UnknownMostDerived1';
                msg = 'Test.UnknownMostDerived1';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.KnownIntermediate(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::UnknownMostDerived1';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.umd1 = is.readString();
            is.endSlice();
            obj = iceReadImpl@Test.KnownIntermediate(obj, is);
        end
    end
end
