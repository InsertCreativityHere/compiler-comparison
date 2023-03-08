% G2   Summary of G2
%
% G2 Properties:
%   a

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef G2 < Ice.Value
    properties
        a int64
    end
    methods
        function obj = G2(a)
            if nargin == 0
                obj.a = 0;
            elseif ne(a, IceInternal.NoInit.Instance)
                obj.a = a;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::G2', -1, true);
            os.writeLong(obj.a);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.a = is.readLong();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::G2';
        end
    end
end
