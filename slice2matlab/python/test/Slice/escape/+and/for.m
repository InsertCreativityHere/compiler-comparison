
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef for < Ice.Value
    properties
        foo int32
        from
    end
    methods
        function obj = for(foo, from)
            if nargin == 0
                obj.foo = 0;
                obj.from = [];
            elseif ne(foo, IceInternal.NoInit.Instance)
                obj.foo = foo;
                obj.from = from;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::and::for', -1, true);
            os.writeInt(obj.foo);
            os.writeProxy(obj.from);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.foo = is.readInt();
            obj.from = and.execPrx.ice_read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::and::for';
        end
    end
    properties(Constant, Access=private)
        TypeId char = '::and::for'
    end
end
