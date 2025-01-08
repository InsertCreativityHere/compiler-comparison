
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef E < Ice.Value
    properties
        fse Test.FixedStruct
    end
    methods
        function obj = E(fse)
            if nargin == 0
                obj.fse = Test.FixedStruct();
            elseif ne(fse, IceInternal.NoInit.Instance)
                obj.fse = fse;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::E', -1, true);
            Test.FixedStruct.ice_write(os, obj.fse);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.fse = Test.FixedStruct.ice_read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::E';
        end
    end
end
