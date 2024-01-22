% else_   Summary of else_
%
% else_ Properties:
%   if_
%   equals
%   final

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef else_ < Ice.Value
    properties
        if_ int32
        equals
        final int32
    end
    methods
        function obj = else_(if_, equals, final)
            if nargin == 0
                obj.if_ = 0;
                obj.equals = [];
                obj.final = 0;
            elseif ne(if_, IceInternal.NoInit.Instance)
                obj.if_ = if_;
                obj.equals = equals;
                obj.final = final;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::abstract::else', -1, true);
            os.writeInt(obj.if_);
            os.writeProxy(obj.equals);
            os.writeInt(obj.final);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.if_ = is.readInt();
            obj.equals = abstract.defaultPrx.ice_read(is);
            obj.final = is.readInt();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::abstract::else';
        end
    end
end
