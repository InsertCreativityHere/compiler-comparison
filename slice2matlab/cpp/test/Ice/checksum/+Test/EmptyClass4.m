% EmptyClass4   Summary of EmptyClass4

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.9

classdef EmptyClass4 < Test.EmptyClass1
    methods
        function obj = EmptyClass4(noInit)
            if nargin == 1 && ne(noInit, IceInternal.NoInit.Instance)
                narginchk(0,0);
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::EmptyClass4', -1, false);
            os.endSlice();
            iceWriteImpl@Test.EmptyClass1(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
            iceReadImpl@Test.EmptyClass1(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::EmptyClass4';
        end
    end
end
