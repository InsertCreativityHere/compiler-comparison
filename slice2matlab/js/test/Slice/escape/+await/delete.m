% delete   Summary of delete
%
% delete Properties:
%   if_
%   else_
%   export

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef delete < Ice.Value
    properties
        if_ int32
        else_
        export int32
    end
    methods
        function obj = delete(if_, else_, export)
            if nargin == 0
                obj.if_ = 0;
                obj.else_ = [];
                obj.export = 0;
            elseif ne(if_, IceInternal.NoInit.Instance)
                obj.if_ = if_;
                obj.else_ = else_;
                obj.export = export;
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
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.if_ = is.readInt();
            obj.else_ = await.casePrx.ice_read(is);
            obj.export = is.readInt();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::await::delete';
        end
    end
end
