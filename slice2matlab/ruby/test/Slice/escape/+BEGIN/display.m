
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef display < Ice.Value
    properties
        when BEGIN.and
        dup
        else int32
    end
    methods
        function obj = display(when, dup, else)
            if nargin == 0
                obj.when = BEGIN.and();
                obj.dup = [];
                obj.else = 0;
            elseif ne(when, IceInternal.NoInit.Instance)
                obj.when = when;
                obj.dup = dup;
                obj.else = else;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::BEGIN::display', -1, true);
            BEGIN.and.ice_write(os, obj.when);
            os.writeProxy(obj.dup);
            os.writeInt(obj.else);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.when = BEGIN.and.ice_read(is);
            obj.dup = BEGIN.breakPrx.ice_read(is);
            obj.else = is.readInt();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::BEGIN::display';
        end
    end
    properties(Constant, Access=private)
        TypeId char = '::BEGIN::display'
    end
end
