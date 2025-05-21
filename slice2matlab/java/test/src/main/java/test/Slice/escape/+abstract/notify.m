
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef notify < Ice.Value
    properties
        if int32
        equals
    end
    methods
        function obj = notify(if, equals)
            if nargin == 0
                obj.if = 0;
                obj.equals = [];
            elseif ne(if, IceInternal.NoInit.Instance)
                obj.if = if;
                obj.equals = equals;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::abstract::notify', -1, true);
            os.writeInt(obj.if);
            os.writeProxy(obj.equals);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.if = is.readInt();
            obj.equals = abstract.defaultPrx.ice_read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::abstract::notify';
        end
    end
    properties(Constant, Access=private)
        TypeId char = '::abstract::notify'
    end
end
