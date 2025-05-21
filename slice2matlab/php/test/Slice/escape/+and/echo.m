
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef echo < Ice.Value
    properties
        if int32
        empty
    end
    methods
        function obj = echo(if, empty)
            if nargin == 0
                obj.if = 0;
                obj.empty = [];
            elseif ne(if, IceInternal.NoInit.Instance)
                obj.if = if;
                obj.empty = empty;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::and::echo', -1, true);
            os.writeInt(obj.if);
            os.writeProxy(obj.empty);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.if = is.readInt();
            obj.empty = and.diePrx.ice_read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::and::echo';
        end
    end
    properties(Constant, Access=private)
        TypeId char = '::and::echo'
    end
end
