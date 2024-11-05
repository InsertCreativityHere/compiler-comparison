
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef Pen < Ice.Value
    properties
        thickness int32
        color Test.Color
    end
    methods
        function obj = Pen(thickness, color)
            if nargin == 0
                obj.thickness = 0;
                obj.color = Test.Color();
            elseif ne(thickness, IceInternal.NoInit.Instance)
                obj.thickness = thickness;
                obj.color = color;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Pen', -1, true);
            os.writeInt(obj.thickness);
            Test.Color.ice_write(os, obj.color);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.thickness = is.readInt();
            obj.color = Test.Color.ice_read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Pen';
        end
    end
end
