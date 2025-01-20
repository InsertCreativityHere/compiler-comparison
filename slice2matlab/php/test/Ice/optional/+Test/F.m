
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef F < Test.E
    properties
        fsf
    end
    methods
        function obj = F(fse, fsf)
            if nargin == 0
                fse = Test.FixedStruct();
                fsf = IceInternal.UnsetI.Instance;
                v = { fse };
            elseif eq(fse, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance };
            else
                v = { fse };
            end
            obj = obj@Test.E(v{:});
            if ne(fse, IceInternal.NoInit.Instance)
                obj.fsf = fsf;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::F', -1, false);
            Test.FixedStruct.ice_writeOpt(os, 1, obj.fsf);
            os.endSlice();
            iceWriteImpl@Test.E(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.fsf = Test.FixedStruct.ice_readOpt(is, 1);
            is.endSlice();
            iceReadImpl@Test.E(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::F';
        end
    end
end
