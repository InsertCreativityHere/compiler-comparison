
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef KnownDerived < Test.Base
    properties
        kd char
    end
    methods
        function obj = KnownDerived(errID, msg)
            if nargin == 0
                errID = 'Test:KnownDerived';
                msg = 'Test.KnownDerived';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.Base(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::KnownDerived';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.kd = is.readString();
            is.endSlice();
            obj = iceReadImpl@Test.Base(obj, is);
        end
    end
end
