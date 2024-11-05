
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef Base < Ice.Value
    properties
        theS Test.S
        str char
    end
    methods
        function obj = Base(theS, str)
            if nargin == 0
                obj.theS = Test.S();
                obj.str = '';
            elseif ne(theS, IceInternal.NoInit.Instance)
                obj.theS = theS;
                obj.str = str;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Base', -1, true);
            Test.S.ice_write(os, obj.theS);
            os.writeString(obj.str);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.theS = Test.S.ice_read(is);
            obj.str = is.readString();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Base';
        end
    end
end
