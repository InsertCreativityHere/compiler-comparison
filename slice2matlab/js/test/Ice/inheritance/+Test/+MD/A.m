
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef A < Ice.Value
    properties
        aA int32
    end
    methods
        function obj = A(aA)
            if nargin == 0
                obj.aA = 0;
            elseif ne(aA, IceInternal.NoInit.Instance)
                obj.aA = aA;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::MD::A', -1, true);
            os.writeInt(obj.aA);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.aA = is.readInt();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MD::A';
        end
    end
end
