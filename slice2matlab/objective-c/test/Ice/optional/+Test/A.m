% A   Summary of A
%
% A Properties:
%   requiredA
%   mc
%   mb
%   ma

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from OptionalTest.ice by slice2matlab version 3.7.10

classdef A < Ice.Value
    properties
        requiredA int32
        mc
        mb
        ma
    end
    methods
        function obj = A(requiredA, mc, mb, ma)
            if nargin == 0
                obj.requiredA = 0;
                obj.mc = IceInternal.UnsetI.Instance;
                obj.mb = IceInternal.UnsetI.Instance;
                obj.ma = IceInternal.UnsetI.Instance;
            elseif ne(requiredA, IceInternal.NoInit.Instance)
                obj.requiredA = requiredA;
                obj.mc = mc;
                obj.mb = mb;
                obj.ma = ma;
            end;
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
