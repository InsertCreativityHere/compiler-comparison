% B   Summary of B
%
% B Properties:
%   bB

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef B < Test.MG.A
    properties
        bB int32
    end
    methods
        function obj = B(aA, bB)
            if nargin == 0
                aA = 0;
                bB = 0;
                v = { aA };
            elseif eq(aA, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance };
            else
                v = { aA };
            end;
            obj = obj@Test.MG.A(v{:});
            if ne(aA, IceInternal.NoInit.Instance)
                obj.bB = bB;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::MG::B', -1, false);
            os.writeInt(obj.bB);
            os.endSlice();
            iceWriteImpl@Test.MG.A(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.bB = is.readInt();
            is.endSlice();
            iceReadImpl@Test.MG.A(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MG::B';
        end
    end
end
