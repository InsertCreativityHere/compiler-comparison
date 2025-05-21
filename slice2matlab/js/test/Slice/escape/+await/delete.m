
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef delete < Ice.Value
    properties
        else
        export int32
        clone char
    end
    methods
        function obj = delete(else, export, clone)
            if nargin == 0
                obj.else = [];
                obj.export = 0;
                obj.clone = '';
            elseif ne(else, IceInternal.NoInit.Instance)
                obj.else = else;
                obj.export = export;
                obj.clone = clone;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::await::delete', -1, true);
            os.writeProxy(obj.else);
            os.writeInt(obj.export);
            os.writeString(obj.clone);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.else = await.casePrx.ice_read(is);
            obj.export = is.readInt();
            obj.clone = is.readString();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::await::delete';
        end
    end
    properties(Constant, Access=private)
        TypeId char = '::await::delete'
    end
end
