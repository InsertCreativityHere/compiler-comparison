% C1   Summary of C1
%
% C1 Properties:
%   s

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef C1 < Ice.Value
    properties
        s char
    end
    methods
        function obj = C1(s)
            if nargin == 0
                obj.s = '';
            elseif ne(s, IceInternal.NoInit.Instance)
                obj.s = s;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::C1', -1, true);
            os.writeString(obj.s);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.s = is.readString();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::C1';
        end
    end
end
