
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef A < Ice.Value
    properties
        requiredA int32
        ma
        mb
        mc
    end
    methods
        function obj = A(requiredA, ma, mb, mc)
            if nargin == 0
                obj.requiredA = 0;
                obj.ma = IceInternal.UnsetI.Instance;
                obj.mb = IceInternal.UnsetI.Instance;
                obj.mc = IceInternal.UnsetI.Instance;
            elseif ne(requiredA, IceInternal.NoInit.Instance)
                obj.requiredA = requiredA;
                obj.ma = ma;
                obj.mb = mb;
                obj.mc = mc;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::A', -1, true);
            os.writeInt(obj.requiredA);
            os.writeIntOpt(1, obj.ma);
            os.writeIntOpt(50, obj.mb);
            os.writeIntOpt(500, obj.mc);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.requiredA = is.readInt();
            obj.ma = is.readIntOpt(1);
            obj.mb = is.readIntOpt(50);
            obj.mc = is.readIntOpt(500);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::A';
        end
    end
end
