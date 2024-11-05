
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef IDerived2 < Test.IBase
    methods
        function obj = IDerived2(id)
            if nargin == 0
                id = '';
                v = { id };
            elseif eq(id, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance };
            else
                v = { id };
            end
            obj = obj@Test.IBase(v{:});
            if ne(id, IceInternal.NoInit.Instance)
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::IDerived2', -1, false);
            os.endSlice();
            iceWriteImpl@Test.IBase(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
            iceReadImpl@Test.IBase(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::IDerived2';
        end
    end
end
