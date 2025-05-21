
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef delegate < Ice.Value
    properties
        if int32
        else
    end
    methods
        function obj = delegate(if, else)
            if nargin == 0
                obj.if = 0;
                obj.else = [];
            elseif ne(if, IceInternal.NoInit.Instance)
                obj.if = if;
                obj.else = else;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::abstract::delegate', -1, true);
            os.writeInt(obj.if);
            os.writeProxy(obj.else);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.if = is.readInt();
            obj.else = abstract.casePrx.ice_read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::abstract::delegate';
        end
    end
    properties(Constant, Access=private)
        TypeId char = '::abstract::delegate'
    end
end
