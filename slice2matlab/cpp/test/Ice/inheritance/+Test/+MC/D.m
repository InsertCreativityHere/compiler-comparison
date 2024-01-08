% D   Summary of D
%
% D Properties:
%   dD

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef D < Test.MC.C
    properties
        dD int32
    end
    methods
        function obj = D(aA, bB, cC, dD)
            if nargin == 0
                aA = 0;
                bB = 0;
                cC = 0;
                dD = 0;
                v = { aA, bB, cC };
            elseif eq(aA, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [] };
            else
                v = { aA, bB, cC };
            end;
            obj = obj@Test.MC.C(v{:});
            if ne(aA, IceInternal.NoInit.Instance)
                obj.dD = dD;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::MC::D', -1, false);
            os.writeInt(obj.dD);
            os.endSlice();
            iceWriteImpl@Test.MC.C(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.dD = is.readInt();
            is.endSlice();
            iceReadImpl@Test.MC.C(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MC::D';
        end
    end
end
