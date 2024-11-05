
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef IDerived < Test.IBase
    properties
        name char
    end
    methods
        function obj = IDerived(id, name)
            if nargin == 0
                id = '';
                name = '';
                v = { id };
            elseif eq(id, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance };
            else
                v = { id };
            end
            obj = obj@Test.IBase(v{:});
            if ne(id, IceInternal.NoInit.Instance)
                obj.name = name;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::IDerived', -1, false);
            os.writeString(obj.name);
            os.endSlice();
            iceWriteImpl@Test.IBase(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.name = is.readString();
            is.endSlice();
            iceReadImpl@Test.IBase(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::IDerived';
        end
    end
end
