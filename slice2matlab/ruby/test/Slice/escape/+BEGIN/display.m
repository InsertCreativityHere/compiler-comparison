% display   Summary of display
%
% display Properties:
%   when
%   do
%   dup
%   else_

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef display < Ice.Value
    properties
        when int32
        do int32
        dup
        else_ int32
    end
    methods
        function obj = display(when, do, dup, else_)
            if nargin == 0
                obj.when = 0;
                obj.do = 0;
                obj.dup = [];
                obj.else_ = 0;
            elseif ne(when, IceInternal.NoInit.Instance)
                obj.when = when;
                obj.do = do;
                obj.dup = dup;
                obj.else_ = else_;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::BEGIN::display', -1, true);
            os.writeInt(obj.when);
            os.writeInt(obj.do);
            os.writeProxy(obj.dup);
            os.writeInt(obj.else_);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.when = is.readInt();
            obj.do = is.readInt();
            obj.dup = BEGIN.breakPrx.ice_read(is);
            obj.else_ = is.readInt();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::BEGIN::display';
        end
    end
end
