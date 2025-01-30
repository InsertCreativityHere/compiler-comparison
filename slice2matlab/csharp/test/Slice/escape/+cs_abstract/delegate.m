
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef delegate < Ice.Value
    properties
        if_ int32
        else_
    end
    methods
        function obj = delegate(if_, else_)
            if nargin == 0
                obj.if_ = 0;
                obj.else_ = [];
            elseif ne(if_, IceInternal.NoInit.Instance)
                obj.if_ = if_;
                obj.else_ = else_;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::cs_abstract::delegate', -1, true);
            os.writeInt(obj.if_);
            os.writeProxy(obj.else_);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.if_ = is.readInt();
            obj.else_ = cs_abstract.casePrx.ice_read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::cs_abstract::delegate';
        end
    end
end
