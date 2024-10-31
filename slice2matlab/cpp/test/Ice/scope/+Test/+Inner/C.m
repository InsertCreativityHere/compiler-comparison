% C   Summary of C
%
% C Properties:
%   s

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef C < Ice.Value
    properties
        s Test.Inner.S
    end
    methods
        function obj = C(s)
            if nargin == 0
                obj.s = Test.Inner.S();
            elseif ne(s, IceInternal.NoInit.Instance)
                obj.s = s;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Inner::C', -1, true);
            Test.Inner.S.ice_write(os, obj.s);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.s = Test.Inner.S.ice_read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Inner::C';
        end
    end
end
