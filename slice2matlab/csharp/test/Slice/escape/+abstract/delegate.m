% delegate   Summary of delegate
%
% delegate Properties:
%   if_
%   else_
%   event

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef delegate < Ice.Value
    properties
        if_ int32
        else_
        event int32
    end
    methods
        function obj = delegate(if_, else_, event)
            if nargin == 0
                obj.if_ = 0;
                obj.else_ = [];
                obj.event = 0;
            elseif ne(if_, IceInternal.NoInit.Instance)
                obj.if_ = if_;
                obj.else_ = else_;
                obj.event = event;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::abstract::delegate', -1, true);
            os.writeInt(obj.if_);
            os.writeProxy(obj.else_);
            os.writeInt(obj.event);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.if_ = is.readInt();
            obj.else_ = abstract.casePrx.ice_read(is);
            obj.event = is.readInt();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::abstract::delegate';
        end
    end
end
