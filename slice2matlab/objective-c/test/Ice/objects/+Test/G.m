% G   Summary of G

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ObjectsTest.ice by slice2matlab version 3.7.10

classdef G < Test.Base
    methods
        function obj = G(theS, str)
            if nargin == 0
                theS = Test.S();
                str = '';
                v = { theS, str };
            elseif eq(theS, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [] };
            else
                v = { theS, str };
            end;
            obj = obj@Test.Base(v{:});
            if ne(theS, IceInternal.NoInit.Instance)
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::G', -1, false);
            os.endSlice();
            iceWriteImpl@Test.Base(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
            iceReadImpl@Test.Base(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::G';
        end
    end
end
