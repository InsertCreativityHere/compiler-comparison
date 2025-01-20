
% Copyright (c) ZeroC, Inc.
% Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef PCUnknown < Test.PBase
    properties
        pu char
    end
    methods
        function obj = PCUnknown(pi, pu)
            if nargin == 0
                pi = 0;
                pu = '';
                v = { pi };
            elseif eq(pi, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance };
            else
                v = { pi };
            end
            obj = obj@Test.PBase(v{:});
            if ne(pi, IceInternal.NoInit.Instance)
                obj.pu = pu;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::PCUnknown', -1, false);
            os.writeString(obj.pu);
            os.endSlice();
            iceWriteImpl@Test.PBase(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.pu = is.readString();
            is.endSlice();
            iceReadImpl@Test.PBase(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::PCUnknown';
        end
    end
end
