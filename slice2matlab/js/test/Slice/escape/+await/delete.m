% delete   Summary of delete
%
% delete Properties:
%   if_
%   else_
%   export
%   clone
%   equals
%   hashCode
%   constructor

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef delete < Ice.Value
    properties
        if_ int32
        else_
        export int32
        clone char
        equals char
        hashCode char
        constructor char
    end
    methods
        function obj = delete(if_, else_, export, clone, equals, hashCode, constructor)
            if nargin == 0
                obj.if_ = 0;
                obj.else_ = [];
                obj.export = 0;
                obj.clone = '';
                obj.equals = '';
                obj.hashCode = '';
                obj.constructor = '';
            elseif ne(if_, IceInternal.NoInit.Instance)
                obj.if_ = if_;
                obj.else_ = else_;
                obj.export = export;
                obj.clone = clone;
                obj.equals = equals;
                obj.hashCode = hashCode;
                obj.constructor = constructor;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::await::delete', -1, true);
            os.writeInt(obj.if_);
            os.writeProxy(obj.else_);
            os.writeInt(obj.export);
            os.writeString(obj.clone);
            os.writeString(obj.equals);
            os.writeString(obj.hashCode);
            os.writeString(obj.constructor);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.if_ = is.readInt();
            obj.else_ = await.casePrx.ice_read(is);
            obj.export = is.readInt();
            obj.clone = is.readString();
            obj.equals = is.readString();
            obj.hashCode = is.readString();
            obj.constructor = is.readString();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::await::delete';
        end
    end
end
