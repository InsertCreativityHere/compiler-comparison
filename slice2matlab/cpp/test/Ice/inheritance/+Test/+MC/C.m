% C   Summary of C
%
% C Properties:
%   cC

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef C < Test.MC.B
    properties
        cC int32
    end
    methods
        function obj = C(aA, bB, cC)
            if nargin == 0
                aA = 0;
                bB = 0;
                cC = 0;
                v = { aA, bB };
            elseif eq(aA, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [] };
            else
                v = { aA, bB };
            end;
            obj = obj@Test.MC.B(v{:});
            if ne(aA, IceInternal.NoInit.Instance)
                obj.cC = cC;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::MC::C', -1, false);
            os.writeInt(obj.cC);
            os.endSlice();
            iceWriteImpl@Test.MC.B(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.cC = is.readInt();
            is.endSlice();
            iceReadImpl@Test.MC.B(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MC::C';
        end
    end
end
