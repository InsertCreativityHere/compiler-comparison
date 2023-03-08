% switch_   Summary of switch_
%
% switch_ Properties:
%   if_
%   export
%   volatile

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.9

classdef switch_ < Ice.Value
    properties
        if_ int32
        export
        volatile int32
    end
    methods
        function obj = switch_(if_, export, volatile)
            if nargin == 0
                obj.if_ = 0;
                obj.export = [];
                obj.volatile = 0;
            elseif ne(if_, IceInternal.NoInit.Instance)
                obj.if_ = if_;
                obj.export = export;
                obj.volatile = volatile;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::and::switch', -1, true);
            os.writeInt(obj.if_);
            os.writeProxy(obj.export);
            os.writeInt(obj.volatile);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.if_ = is.readInt();
            obj.export = and.funcPrx.ice_read(is);
            obj.volatile = is.readInt();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::and::switch';
        end
    end
end
