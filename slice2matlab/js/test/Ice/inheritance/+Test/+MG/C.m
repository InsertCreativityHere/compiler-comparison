% C   Summary of C
%
% C Properties:
%   cC

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef C < Test.MG.B
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
            end
            obj = obj@Test.MG.B(v{:});
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
            os.startSlice('::Test::MG::C', -1, false);
            os.writeInt(obj.cC);
            os.endSlice();
            iceWriteImpl@Test.MG.B(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.cC = is.readInt();
            is.endSlice();
            iceReadImpl@Test.MG.B(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MG::C';
        end
    end
end
