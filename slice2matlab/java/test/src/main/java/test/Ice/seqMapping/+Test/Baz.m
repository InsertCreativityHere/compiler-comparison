
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef Baz < Ice.Value
    properties
        SLmem
        SLSmem
    end
    methods
        function obj = Baz(SLmem, SLSmem)
            if nargin == 0
                obj.SLmem = [];
                obj.SLSmem = [];
            elseif ne(SLmem, IceInternal.NoInit.Instance)
                obj.SLmem = SLmem;
                obj.SLSmem = SLSmem;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Baz', -1, true);
            os.writeByteSeq(obj.SLmem);
            Test.SLS.write(os, obj.SLSmem);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.SLmem = is.readByteSeq();
            obj.SLSmem = Test.SLS.read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Baz';
        end
    end
end
