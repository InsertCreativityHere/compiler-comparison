
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef KnownMostDerived < Test.KnownIntermediate
    properties
        kmd char
    end
    methods
        function obj = KnownMostDerived(errID, msg)
            if nargin == 0
                errID = 'Test:KnownMostDerived';
                msg = 'Test.KnownMostDerived';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.KnownIntermediate(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::KnownMostDerived';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.kmd = is.readString();
            is.endSlice();
            obj = iceReadImpl@Test.KnownIntermediate(obj, is);
        end
    end
end
