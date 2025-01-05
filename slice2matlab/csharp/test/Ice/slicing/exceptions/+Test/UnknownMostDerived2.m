
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerPrivateAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef UnknownMostDerived2 < Test.UnknownIntermediate
    properties
        umd2 char
    end
    methods
        function obj = UnknownMostDerived2(errID, msg)
            if nargin == 0
                errID = 'Test:UnknownMostDerived2';
                msg = 'Test.UnknownMostDerived2';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.UnknownIntermediate(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::UnknownMostDerived2';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.umd2 = is.readString();
            is.endSlice();
            obj = iceReadImpl@Test.UnknownIntermediate(obj, is);
        end
    end
end
