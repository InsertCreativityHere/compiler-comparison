% G1   Summary of G1
%
% G1 Properties:
%   a

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef G1 < Ice.Value
    properties
        a char
    end
    methods
        function obj = G1(a)
            if nargin == 0
                obj.a = '';
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
            os.startSlice('::Test::G1', -1, true);
            os.writeString(obj.a);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.a = is.readString();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::G1';
        end
    end
end
