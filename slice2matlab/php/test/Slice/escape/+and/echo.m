% echo   Summary of echo
%
% echo Properties:
%   if_
%   else_
%   elseif_
%   empty

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef echo < Ice.Value
    properties
        if_ int32
        else_ int32
        elseif_
        empty int32
    end
    methods
        function obj = echo(if_, else_, elseif_, empty)
            if nargin == 0
                obj.if_ = 0;
                obj.else_ = 0;
                obj.elseif_ = [];
                obj.empty = 0;
            elseif ne(if_, IceInternal.NoInit.Instance)
                obj.if_ = if_;
                obj.else_ = else_;
                obj.elseif_ = elseif_;
                obj.empty = empty;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::and::echo', -1, true);
            os.writeInt(obj.if_);
            os.writeInt(obj.else_);
            os.writeProxy(obj.elseif_);
            os.writeInt(obj.empty);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.if_ = is.readInt();
            obj.else_ = is.readInt();
            obj.elseif_ = and.diePrx.ice_read(is);
            obj.empty = is.readInt();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::and::echo';
        end
    end
end
