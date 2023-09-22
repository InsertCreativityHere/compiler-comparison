% Derived1   Summary of Derived1

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Types.ice by slice2matlab version 3.7.10

classdef Derived1 < Test.Compact1
    methods
        function obj = Derived1(id)
            if nargin == 0
                id = 0;
                v = { id };
            elseif eq(id, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance };
            else
                v = { id };
            end;
            obj = obj@Test.Compact1(v{:});
            if ne(id, IceInternal.NoInit.Instance)
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Derived1', -1, false);
            os.endSlice();
            iceWriteImpl@Test.Compact1(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
            iceReadImpl@Test.Compact1(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Derived1';
        end
    end
end
