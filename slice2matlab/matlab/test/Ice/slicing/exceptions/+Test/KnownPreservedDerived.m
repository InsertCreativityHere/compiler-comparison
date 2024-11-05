
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef KnownPreservedDerived < Test.KnownPreserved
    properties
        kpd char
    end
    methods
        function obj = KnownPreservedDerived(errID, msg)
            if nargin == 0
                errID = 'Test:KnownPreservedDerived';
                msg = 'Test.KnownPreservedDerived';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.KnownPreserved(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::KnownPreservedDerived';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.kpd = is.readString();
            is.endSlice();
            obj = iceReadImpl@Test.KnownPreserved(obj, is);
        end
    end
end
